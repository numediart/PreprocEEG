function [D,E,R,EXTRA]=nt_cca_mm(x,y,ssize,ldaflag,nccs)
%[D,E,R]=nt_cca_mm(x,y,ssize,ldaflag,nccs) - calculate metrics for match-mismatch task
%
%  D: d-prime 
%  E: error rate
%  R: correlation coefficient over entire trial
%
%  x,y: data as trial arrays
%  ssize: samples, segment size [default: all]
%  ldaflag: 0: first CC, 1: LDA, 2: sum, p<1: weight with exp p
%  nccs: number of CCs to keep [default: all]

zscore=1;
lda=1;

if nargin<2; error('!'); end
if nargin<3; ssize=[]; end
if nargin<4||isempty(ldaflag); ldaflag=1; end
if nargin<5; nccs=[]; end

if ssize ~= round(ssize); error('!'); end

% clip all trials to same size multiple of ssize
nsamples=size(x{1},1); % min size over trials
for iTrial=1:numel(x)
    if size(x{iTrial}) ~= size(y{iTrial}); error('!'); end
    nsamples=min(nsamples,size(x{iTrial},1));
end
if isempty(ssize); ssize=nsamples; end
nsamples=ssize*floor(nsamples/ssize); % reduce to multiple of wsize
if nsamples<1; error('!'); end
for iTrial=1:numel(x)
    x{iTrial}=nt_demean(x{iTrial}(1:nsamples,:)); % clip trials to new length
    y{iTrial}=nt_demean(y{iTrial}(1:nsamples,:));
end
nsegments=nsamples/ssize; % number of segments per trial
ntrials=numel(x);

if 0 % scramble (sanity check, should yield approx d-prime==0 and error == 50%)
    for iTrial=1:ntrials
        y{iTrial}=y{1+mod(iTrial+5,ntrials)};
        %disp([iTrial, 1+mod(iTrial+5,ntrials)]);
    end
end

% cross-validated CCA
shifts=[0]; 
[AA,BB,RR]=nt_cca_crossvalidate(x,y,shifts);
% R=mean(RR,3);
if isempty(nccs)
    nccs=size(AA{1},2);
else
    nccs=min(nccs,size(AA{1},2));
    for iTrial=1:ntrials
        AA{iTrial}=AA{iTrial}(:,1:nccs);
        BB{iTrial}=BB{iTrial}(:,1:nccs);
    end
    RR=RR(1:nccs,:,:);
end

DD_match=[];
DD_mismatch=[];
RR=[];
for iTrial=1:ntrials
    
    % exclude this trial
    other_trials=setdiff(1:ntrials,iTrial);
    
    % calculate LDA model on other trials
    
    % CCs of other trials
    cc_x=nt_mmat(x(other_trials),AA{iTrial});
    cc_y=nt_mmat(y(other_trials),BB{iTrial});

    % cut CCs into segments
    S_x=zeros(ssize,nccs,ntrials-1,nsegments);
    S_y=zeros(ssize,nccs,ntrials-1,nsegments);
    for iTrial2=1:ntrials-1
        for iSegment=1:nsegments
            start=(iSegment-1)*ssize;
            
            if zscore
                S_x(:,:,iTrial2,iSegment)=nt_normcol(nt_demean(cc_x{iTrial2}(start+(1:ssize),:))); % mean 0 norm 1
                S_y(:,:,iTrial2,iSegment)=nt_normcol(nt_demean(cc_y{iTrial2}(start+(1:ssize),:)));
            else
                S_x(:,:,iTrial2,iSegment)=cc_x{iTrial2}(start+(1:ssize),:); 
                S_y(:,:,iTrial2,iSegment)=cc_y{iTrial2}(start+(1:ssize),:);
            end
        end
    end
    
    % For each EEG segment, we calculate the Euclidean distance between this segment and the corresponding
    % envelope segment (match) and between this segment and all the envelope segments of other trials (mismatch).
    
    % match:
    % distance of each segment of EEG fron corresponding segment of envelope
    D_match=sqrt(mean((S_x-S_y).^2, 1));
    D_match=permute(D_match,[2 3 4 1]); % get rid of initial singleton
    D_match=D_match(:,:)'; % --> segments X comps
    
    % mismatch:
    % distance of each segment from all other segments
    S_x=S_x(:,:,:); 
    S_y=S_y(:,:,:);
    D_mismatch=zeros(size(S_x,3),size(S_x,3)-1, nccs);
    for iSegment=1:size(S_x,3)
        other_segments=setdiff(1:size(S_x,3),iSegment);
        if 0
            tmp=bsxfun(@minus,S_y(:,:,other_segments),S_x(:,:,iSegment));
        else
            tmp=bsxfun(@minus,S_x(:,:,other_segments),S_y(:,:,iSegment));
        end
        d=sqrt(mean(tmp.^2, 1));
        D_mismatch(iSegment,:,:)=permute(d,[1 3 2]);
    end
    D_mismatch=mean(D_mismatch,2); % average over all other segments
    D_mismatch=permute(D_mismatch,[1 3 2]); 
     
    if 0
        figure(1); clf
        for k=1:4
            subplot (2,2,k);
            histogram(D_mismatch(:,k)-D_match(:,k), -.5:.01:.5); title(mean(D_mismatch(:,k)-D_match(:,k))/std(D_mismatch(:,k)-D_match(:,k)));
        end
    end
        
    % Use DSS to find optimal linear combination of distance scores to 
    % separate match & mismatch (--> LDA)

    c0=nt_cov(D_match)/size(D_mismatch,1);
    c1=nt_cov(D_mismatch)/size(D_match,1);
    [todss,pwr0,pwr1]=nt_dss0(c0,c1);
    if mean(D_match*todss(:,1), 1)<0; todss=-todss; end

    %{
    The CCA solution (AA, BB) and the DSS transform (todss) 
    were calculated entirely on the basis of other trials.     
    We apply them to segments of this trial.
    %}

    % CCs
    cc_x=nt_mmat(x{iTrial},AA{iTrial});
    cc_y=nt_mmat(y{iTrial},BB{iTrial});
    %cc_x=nt_mmat(y{1+mod(iTrial,ntrials)},BB{iTrial}); % scramble
    
    % cut CCs into segments
    S_x=zeros(ssize,nccs,nsegments);
    S_y=zeros(ssize,nccs,nsegments);
    for iSegment=1:nsegments
        start=(iSegment-1)*ssize;
        if zscore
            S_x(:,:,iSegment)=nt_normcol(nt_demean(cc_x(start+(1:ssize),:))); % mean 0 norm 1
            S_y(:,:,iSegment)=nt_normcol(nt_demean(cc_y(start+(1:ssize),:)));
        else
            S_x(:,:,iSegment)=cc_x(start+(1:ssize),:); 
            S_y(:,:,iSegment)=cc_y(start+(1:ssize),:);
        end
%         S_x(:,:,iSegment)=nt_normcol(nt_demean(cc_x(start+(1:ssize),:)));
%         S_y(:,:,iSegment)=nt_normcol(nt_demean(cc_y(start+(1:ssize),:)));
    end
    
    % match:
    % distance of each segment of EEG fron corresponding segment of envelope
    D_match=sqrt(mean((S_x-S_y).^2, 1));
    D_match=permute(D_match,[2 3 4 1]); % get rid of initial singleton
    D_match=D_match(:,:)'; % --> segments X comps
    
    % mismatch:
    % distance of each segment from all other segments
    S_x=S_x(:,:,:); 
    S_y=S_y(:,:,:);
    D_mismatch=zeros(size(S_x,3),size(S_x,3)-1, nccs);
    for iSegment=1:size(S_x,3)
        other_segments=setdiff(1:size(S_x,3),iSegment);
        if 0
            tmp=bsxfun(@minus,S_y(:,:,other_segments),S_x(:,:,iSegment));
        else
            tmp=bsxfun(@minus,S_x(:,:,other_segments),S_y(:,:,iSegment));
        end
        d=sqrt(mean(tmp.^2, 1));
        D_mismatch(iSegment,:,:)=permute(d,[1 3 2]);
    end
    D_mismatch=mean(D_mismatch,2); % average over all other segments
    D_mismatch=permute(D_mismatch,[1 3 2]); 

    if ldaflag>0 && ldaflag<1
        p=ldaflag;
        ldaflag=-1;
    end
    switch ldaflag  
        case 0
            D_match=D_match(:,1);
            D_mismatch=D_mismatch(:,1);
        case 1
            D_match=D_match*todss(:,1);
            D_mismatch=D_mismatch*todss(:,1);
        case 2
            D_match=mean(D_match,2);
            D_mismatch=mean(D_mismatch,2);
        case -1
            pp=p.^(0:size(D_match,2)-1);
            D_match=mean(D_match.*pp,2);
            D_mismatch=mean(D_mismatch.*pp,2);
        otherwise
            error('!');
    end
    
        
    DD_match=[DD_match; D_match(:)];
    DD_mismatch=[DD_mismatch; D_mismatch(:)];
    
    err(iTrial)=numel(find(D_match>mean(D_mismatch, 1)))/nsegments;
    
%     figure(1); clf; 
%     for k=1: size(cc_x,2)
%         subplot(size(cc_x,2),1,k);
%         plot([cc_x(:,k),cc_y(:,k)]); 
%     end
%     pause
    
    RR(iTrial,:)=diag(corr(cc_x,cc_y));
end

if 0
    figure(100);  clf;
    histogram(DD_mismatch-DD_match, -.5:.05:.5); title(mean(DD_mismatch-DD_match)/std(DD_mismatch-DD_match)); 
    drawnow;
end

D=mean(DD_mismatch-DD_match, 1)/std(DD_mismatch-DD_match);
E=mean(DD_mismatch-DD_match < 0, 1);
R=mean(RR, 1);
EXTRA.DD_mismatch=DD_mismatch;
EXTRA.DD_match=DD_match;



