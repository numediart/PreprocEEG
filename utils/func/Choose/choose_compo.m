function [Z,Y] = choose_compo(X,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2)
% program  by  Xueyuan Xu and Luchang Li.
% choose_compo finds noise-related IMFs or Components with the help of standard.
% Note: > X: a IMF or Component matrix from the original series X.
%       > threshold: the autocorrelation of IMFs or Components below the threshold are judged as noise-related IMFs or Components.
[numOfcompo ,T] = size(X);
        % Selection of noise imfs
%         [h l] = size(autocorr(X(1,:)));
%         P_cmopo = zeros(numOfcompo,l);
   for i = 1:numOfcompo
       if any(X(i,:))
           js1(i,:) = myautocorrelation(X(i,:),acthreshold1,acthreshold2);
       else
           js1(i,:) = 0;
       end
    end
  


    Xsave1 = X;
    
       Xsave2 = X;
          Xsave3 = X;
            Xsave4 = X;
          
    Z1=[];
    Z2=[];
    Z3=[];
    Z4=[];
    h1=[];
    h2=[];
    h3=[];
    h4=[];
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%myautocorrelation
        j = 1;
    for i = 1:numOfcompo
%         if (js1(i,:)) < 1
        if ~any(js1(i,:))
            l(i)=i;
            Z1(j,:) = Xsave1(i,:);
            j = j + 1;
            Xsave1(i,:) = 0;
        end
    end
    
        k = 1;
    for i=1:numOfcompo
%         if (Xsave1(i,:)) == 0
        if ~any(Xsave1(i,:))
            m(i)=i;
            h1(k,:) = i; 
            k=k+1;
        end
    end
    
    if ~isempty(Z1)
      Z1(:,T+1)=h1; 
    end
        
        
        
        

        js2 = myentropy(Xsave2,enthreshold1,enthreshold2);
     
        
         j = 1;
    for i = 1:numOfcompo
        if js2(i,:) < 1
        Z2(j,:) = Xsave2(i,:);
        j = j + 1;
        Xsave2(i,:) = 0;
        end
    end
                k = 1;
    for i=1:numOfcompo
        if Xsave2(i,:) == 0;  
            h2(k,:) = i;
            k=k+1;
        end
    end
        if ~isempty(Z2)
    Z2(:,T+1)=h2;
        end
        
     
    
    
    
        js3 = mykurtosis(Xsave3,kuthreshold1,kuthreshold2);
        
         j = 1;
    for i = 1:numOfcompo
        if js3(i,:) < 1
        Z3(j,:) = Xsave3(i,:);
        j = j + 1;
        Xsave3(i,:) = 0;
        end
    end
         k = 1;
    for i=1:numOfcompo
        if Xsave3(i,:) == 0;  
            h3(k,:) = i;
            k=k+1;
        end
    end
        if ~isempty(Z3)
    Z3(:,T+1)=h3;
        end
        
        js4 = myvariance(Xsave4,vathreshold1,vathreshold2);
   
j = 1;
    for i = 1:numOfcompo
        if js4(i,:) < 1
        Z4(j,:) = Xsave4(i,:);
        j = j + 1;
        Xsave4(i,:) = 0;
        end
    end
             k = 1;
    for i=1:numOfcompo
        if Xsave4(i,:) == 0;  
            h4(k,:) = i;
            k=k+1;
        end
    end
        if ~isempty(Z4)
    Z4(:,T+1)=h4;
        end
    
    
    
        [ha1,li1] =size(Z1);
        [ha2,li2] =size(Z2);
        [ha3,li3] =size(Z3);
        [ha4,li4] =size(Z4);
        
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%            
        if ~isempty(Z2)&&~isempty(Z3)&&~isempty(Z1)&&isempty(Z4)
        for i = 1:ha1
            for jj = 1:ha2
                if Z2(jj,T+1) == Z1(i,T+1)
                    Z2(jj,:)=0;
                end
            end
        end
                  for i = 1:ha1
            for jj = 1:ha3
                if Z3(jj,T+1) == Z1(i,T+1)
                    Z3(jj,:)=0;
                end
            end
        end
                for i = 1:ha2
            for jj = 1:ha3
                if Z3(jj,T+1)==Z2(i,T+1)
                    Z3(jj,:)=0;
                end
            end
                end

        end
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
                if ~isempty(Z2)&&~isempty(Z3)&&isempty(Z1)&&~isempty(Z4)
        for i = 1:ha4
            for jj = 1:ha2
                if Z2(jj,T+1) == Z4(i,T+1)
                    Z2(jj,:)=0;
                end
            end
        end
                  for i = 1:ha4
            for jj = 1:ha3
                if Z3(jj,T+1) == Z4(i,T+1)
                    Z3(jj,:)=0;
                end
            end
        end
                for i = 1:ha2
            for jj = 1:ha3
                if Z3(jj,T+1)==Z2(i,T+1)
                    Z3(jj,:)=0;
                end
            end
                end

                end
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                 if isempty(Z2)&&~isempty(Z3)&&~isempty(Z1)&&~isempty(Z4)
        for i = 1:ha1
            for jj = 1:ha4
                if Z4(jj,T+1) == Z1(i,T+1)
                    Z4(jj,:)=0;
                end
            end
        end
                  for i = 1:ha1
            for jj = 1:ha3
                if Z3(jj,T+1) == Z1(i,T+1)
                    Z3(jj,:)=0;
                end
            end
        end
                for i = 1:ha4
            for jj = 1:ha3
                if Z3(jj,T+1)==Z4(i,T+1)
                    Z3(jj,:)=0;
                end
            end
                end

                end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                 if ~isempty(Z2)&&isempty(Z3)&&~isempty(Z1)&&~isempty(Z4)
        for i = 1:ha1
            for jj = 1:ha4
                if Z4(jj,T+1) == Z1(i,T+1)
                    Z4(jj,:)=0;
                end
            end
        end
                  for i = 1:ha1
            for jj = 1:ha2
                if Z2(jj,T+1) == Z1(i,T+1)
                    Z2(jj,:)=0;
                end
            end
        end
                for i = 1:ha4
            for jj = 1:ha2
                if Z2(jj,T+1)==Z4(i,T+1)
                    Z2(jj,:)=0;
                end
            end
                end

                end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%23
   if isempty(Z1)&&~isempty(Z2)&&~isempty(Z3)&&isempty(Z4)
           for i = 1:ha2
            for jj = 1:ha3
                if Z3(jj,T+1) == Z2(i,T+1)
                    Z3(jj,:)=0;
                end
            end
                end
       
   end
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%13
    if ~isempty(Z1)&&isempty(Z2)&&~isempty(Z3)&&isempty(Z4)
           for i = 1:ha1
            for jj = 1:ha3
                if Z3(jj,T+1) == Z1(i,T+1)
                    Z3(jj,:)=0;
                end
            end
                end
       
   end
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%14       
      if ~isempty(Z1)&&isempty(Z2)&&isempty(Z3)&&~isempty(Z4)
                     for i = 1:ha1
            for jj = 1:ha4
                if Z4(jj,T+1) == Z1(i,T+1)
                    Z4(jj,:)=0;
                end
            end
                end
      end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%12                 
              if ~isempty(Z1)&&~isempty(Z2)&&isempty(Z3)&&isempty(Z4)
                     for i = 1:ha1
            for jj = 1:ha2
                if Z2(jj,T+1) == Z1(i,T+1)
                    Z2(jj,:)=0;
                end
            end
                end
              end 
      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%24
                   if isempty(Z1)&&~isempty(Z2)&&isempty(Z3)&&~isempty(Z4)
                     for i = 1:ha4
            for jj = 1:ha2
                if Z2(jj,T+1) == Z4(i,T+1)
                    Z2(jj,:)=0;
                end
            end
                end
                   end 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%34
                   if isempty(Z1)&&isempty(Z2)&&~isempty(Z3)&&~isempty(Z4)
                     for i = 1:ha4
            for jj = 1:ha3
                if Z3(jj,T+1) == Z4(i,T+1)
                    Z3(jj,:)=0;
                end
            end
                end
              end 
      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
if ~isempty(Z1)&&isempty(Z2)&&isempty(Z3)&&isempty(Z4)
end
if isempty(Z1)&&~isempty(Z2)&&isempty(Z3)&&isempty(Z4)
end
if isempty(Z1)&&isempty(Z2)&&~isempty(Z3)&&isempty(Z4)
end
if isempty(Z1)&&isempty(Z2)&&isempty(Z3)&&~isempty(Z4)
end
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%1234
                 if ~isempty(Z2)&&~isempty(Z3)&&~isempty(Z1)&&~isempty(Z4)
        for i = 1:ha1
            for jj = 1:ha4
                if Z4(jj,T+1) == Z1(i,T+1)
                    Z4(jj,:)=0;
                end
            end
        end
                  for i = 1:ha1
            for jj = 1:ha2
                if Z2(jj,T+1) == Z1(i,T+1)
                    Z2(jj,:)=0;
                end
            end
        end
                for i = 1:ha4
            for jj = 1:ha2
                if Z2(jj,T+1)==Z4(i,T+1)
                    Z2(jj,:)=0;
                end
            end
                end
                
                                for i = 1:ha4
            for jj = 1:ha3
                if Z3(jj,T+1)==Z4(i,T+1)
                    Z3(jj,:)=0;
                end
            end
                                end
                
                                                
                                for i = 1:ha2
            for jj = 1:ha3
                if Z3(jj,T+1)==Z2(i,T+1)
                    Z3(jj,:)=0;
                end
            end
                                end
                
            for i = 1:ha1
            for jj = 1:ha3
                if Z3(jj,T+1)==Z1(i,T+1)
                    Z3(jj,:)=0;
                end
            end
                end

                end
                

                Z=cat(1,Z1,Z2,Z3,Z4);
  
             Z(all(Z==0,2),:)= [];
                

                [ha,li] =size(Z);
                for i=1:ha
                    temp=Z(i,T+1);
                    X(temp,:)=0;
                end
                
                if ~isempty(Z)
                Z=sortrows(Z,T+1);
                Z(:,T+1)=[];
                Y = X;
                else
                 Y = X; 
                end
end



