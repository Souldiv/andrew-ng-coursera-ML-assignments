function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
if ismatrix(z)
    check = 1+exp(-z);
    g = 1./check;
elseif isvector(z)
    sig = 1/(1+exp(-z));
    g = transpose(sig);
else
    g = 1/(1+exp(-z));
end




% =============================================================

end
