function [D,E,R]=nt_cca_mm(x,y,ssize,flipflag)
%[D,E,R]=nt_cca_mm(x,y,ssize) - calculate metrics for match-mismatch task
%
%  D: d-prime 
%  E: error rate
%  R: correlation coefficient over entire trial
%
%  x,y: data as trial arrays
%  ssize: samples, segment size [default: all]
%  flipflag: if true flip mismatched segments timewise [default false]

if nargin<2; error('!'); end
if nargin<3; ssize=[]; end
if nargin<4||isempty(flipflag); flipflag=0; end

if ssize ~= round(ssize); error('!'); end

% clip all trials to same size multiple of ssize
n=size(x{1},1); % min size?
for iTrial=1:numel(x)
    if size(x{iTrial}) ~= size(y{iTrial}); error('!'); end
    n=min(n,size(x{iTrial},1));
end
if isempty(ssize); ssize=n; end
n=ssize*floor(n/ssize); % reduce to multiple of wsize
if n<1; error('!'); end
for iTrial=1:numel(x)
    x{iTrial}=nt_demean(x{iTrial}(1:n,:)); % clip trials to new length
    y{iTrial}=nt_demean(y{iTrial}(1:n,:));
end
nsegments=n/ssize;
ntrials=numel(x);

if 0 % scramble (sanity check, should yield approx d-prime==0 and error == 50%)
    for iTrial=1:ntrials
        y{iTrial}=y{1+mod(iTrial+5,ntrials)};
        %disp([iTrial, 1+mod(iTrial+5,ntrials)]);
    end
end

% CCA
shifts=[0]; 
[AA,BB,RR]=nt_cca_crossvalidate(x,y,shifts);
R=mean(RR,3);

DD_match=[];
DD_mismatch=[];

for iTrial=1:ntrials
    
    % calculate model on data excluding this trial
    others=setdiff(1:ntrials,iTrial);
    
    % CCs
    cc_x=nt_mmat(x(others),AA{iTrial});
    cc_y=nt_mmat(y(others),BB{iTrial});
    ncomp=size(cc_x{1},2);

    % cut into segments
    X=zeros(ssize,ncomp,numel(others),nsegments);
    Y=zeros(ssize,ncomp,numel(others),nsegments);
    for iTrial2=1:numel(others)
        for iSegment=1:nsegments
            start=(iSegment-1)*ssize;
            X(:,:,iTrial2,iSegment)=nt_normcol(nt_demean(cc_x{iTrial2}(start+(1:ssize),:))); % all mean 0 norm 1
            Y(:,:,iTrial2,iSegment)=nt_normcol(nt_demean(cc_y{iTrial2}(start+(1:ssize),:)));
        end
    end
    
    % We calculate the Euclidean distance between EEG and envelope segments
    % for both matched and mismatched segment pairs.
    
    % match
    D_match=sqrt(mean((X-Y).^2));
    sz=size(D_match); D_match=reshape(D_match,sz(2:end)); % squeeze first dim (singleton)
    D_match=D_match(:,:)'; % trials X comps
    
    % mismatch
    D_mismatch=sqrt(mean((X-circshift(Y,1,3)).^2));
    sz=size(D_mismatch); D_mismatch=reshape(D_mismatch,sz(2:end)); % squeeze first dim (singleton)
    D_mismatch=D_mismatch(:,:)'; % trials X comps
    
    % CCA to contrast match and mismatch --> LDA
    c0=nt_cov(D_match)/size(D_mismatch,1);
    c1=nt_cov(D_mismatch)/size(D_match,1);
    [todss,pwr0,pwr1]=nt_dss0(c0,c1);
    if mean(D_match*todss(:,1))<0; todss=-todss; end
    
%     DD_match=D_match*todss(:,1);
%     DD_mismatch=D_mismatch*todss(:,1);        
%     dprime(iTrial)=abs(mean(DD_match)-mean(DD_mismatch)) /...
%         std([DD_match-mean(DD_match); DD_mismatch-mean(DD_mismatch)]);    

    %{
    We now have a CCA solution (AA, BB), and a JD transform (todss) 
    calculated entirely on the basis of other trials. 
    
    We apply them to segments of this trial.
    %}
    
    % apply same CCA transform:
    cc_x=nt_mmat(x{iTrial},AA{iTrial});
    cc_y=nt_mmat(y{iTrial},BB{iTrial});
    % yy_x=nt_mmat(y{1+mod(iTrial,ntrials)},BB{iTrial}); % scramble
    
    %figure(1); plot([xx_x,yy_x]); pause
    
    % cut CCs into segments
    S_x=zeros(ssize,ncomp,nsegments);
    S_y=zeros(ssize,ncomp,nsegments);
    for iSegment=1:nsegments
        start=(iSegment-1)*ssize;
        S_x(:,:,iSegment)=nt_normcol(nt_demean(cc_x(start+(1:ssize),:)));
        S_y(:,:,iSegment)=nt_normcol(nt_demean(cc_y(start+(1:ssize),:)));
    end
    
    % Euclidean distance for matched segments
    D_match=zeros(nsegments,ncomp);
    for iSegment=1:nsegments
        D_match(iSegment,:)=sqrt( mean((S_x(:,:,iSegment)-S_y(:,:,iSegment)).^2) );
    end        
    
    % Euclidean distance for mismatched segments
    D_mismatch=zeros(nsegments,size(X,3)*size(X,4),ncomp);
    for iSegment=1:nsegments
        X_all_others=X(:,:,:); % all segments of all other trials
        if flipflag;
            X_all_others=X_all_others(end:-1:1,:,:);
        end
        tmp=bsxfun(@minus,X_all_others,S_y(:,:,iSegment));
        d = sqrt(mean((tmp).^2));
        D_mismatch(iSegment,:,:)=permute(d,[1,3,2]); %mean(d,3);
    end
    
    D_mismatch=reshape(D_mismatch,size(D_mismatch,1)*size(D_mismatch,2),size(D_mismatch,3));
    
%      figure(1); clf;  
%      for k=1:6; subplot (3,2,k); plot([D_match_x(:,k),D_mismatch_x(:,k)]); end
    if 0    
        D_match=D_match*todss(:,1);
        D_mismatch=D_mismatch*todss(:,1);
    else
        D_match=D_match(:,1);
        D_mismatch=D_mismatch(:,1);
    end
    
    
    DD_match=[DD_match; D_match(:)];
    DD_mismatch=[DD_mismatch; D_mismatch(:)];
    
    err(iTrial)=numel(find(D_match>mean(D_mismatch)))/nsegments;
    
%      figure(2); clf;
%      plot([D_match_x,D_mismatch_x])
%      pause
    %disp(err(iTrial))
end

D=abs(mean(DD_match)-mean(DD_mismatch)) /...
         std([DD_match-mean(DD_match); DD_mismatch-mean(DD_mismatch)]);   
   
figure(100); clf
histogram(DD_match, 0:.2:10); hold on; histogram(DD_mismatch,0:.2:10); drawnow


E=mean(err);


