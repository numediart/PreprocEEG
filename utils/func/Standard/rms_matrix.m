function rms_value = rms_matrix(X)

[m n] = size(X);
rms_value = sqrt(sum(sum(X.^2))/(m*n));

end