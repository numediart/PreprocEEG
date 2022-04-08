function [Sica,Wica,WC,P_ica] = myinfomax(X,fs)
% program by Xueyuan Xu and Luchang Li.
% wich is an estimate of clean signals processed by the sobi algorithm.
% Note: > X: the observation matrix of dimension [m by T].
%       > fs: sampling frequency.
% REFERENCES:
% - version 1.5 (Revised 9/9-2003)
% - IMM, Technical University of Denmark

% - version 1.4

% - by Thomas Kolenda 2002 - IMM, Technical University of Denmark


% Revised: 9/9-2003, Mads, mad@imm.dtu.dk
%   * Fixed help message to inform the user about U.
%   * Removed the automatic use of PCA in the quadratic case.

% Bibtex references:

% [1]  

%   @article{Bell95,

%       author =       "A. Bell and T.J. Sejnowski",

%       title =        "An Information-Maximization Approach to Blind Separation and Blind Deconvolution",

%       journal =      "Neural Computation",

%       year =         "1995",

%       volume =       "7",

%       pages =        "1129-1159",

%   }

%

% [2]

%   @techreport{Nielsen01:unopt,

%       author =        "H.B. Nielsen",

%       title =         "UCMINF - an Algorithm for Unconstrained, Nonlinear Optimization ",

%       institution =   "IMM, Technical University of Denmark",

%       number =        "IMM-TEC-0019",

%       year =          "2001",

%       url =           "http://www.imm.dtu.dk/pubdb/views/edoc_download.php/642/ps/imm642.ps",

%   }
        Mlags = 1;
        [numOfCV T] = size(X);
        for j = 1 : length(Mlags)
            YC = zeros(numOfCV,T,Mlags(j)+1);
            WC = cell(Mlags(j)+2, 1); % save whiten matrices for reconstruction
            [tempYC tempWC] = whiten(X',0.001);
            YC(:,:,1) = tempYC';
            WC{1,1} = tempWC;
            for i = 1 : Mlags(j)
                tempX = timedelay(X,i*1); % time lags 1.
                [tempYC tempWC] = whiten(tempX',0.001);
                YC(:,:,i+1) = tempYC';
            %     Y(:,:,i) = tempX;
                WC{i+1,1} = tempWC;
            end
                    WC{3, 1} = mean(X');
        [Sica,Aica] = icaML(YC(:,:,1));
        Wica = inv(Aica);
                    WC31 = WC{3, 1}';
            WC31 = WC31(:, ones(T, 1));
            Sica = Sica+Wica*WC{1,1}'*WC31;
        [autocorr_ica H_ica] = sort(abs(diag(corr(Sica',(timedelay(Sica,1))'))),'descend');
       % construct a permutation matrix
        P_ica = zeros(length(H_ica),length(H_ica));   %  reorder
        for p = 1 : length(H_ica)
            P_ica(p,H_ica(p)) = 1;
        end
        Sica = P_ica * Sica; % resort
        end
end