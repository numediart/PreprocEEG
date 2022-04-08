function [Y] = myautocorrelation(X,acthreshold1,acthreshold2)
% This is an autocorrelation procedure for selecting artifact-related components. 
% program  by  Wei Tao and Luchang Li.
        autocc = autocorr(X);
        autocc=abs(autocc);
        if autocc(1,2) > acthreshold1&&autocc(1,2) <acthreshold2
            
               Y = 0;
        else 
               Y = 1;
        end
end