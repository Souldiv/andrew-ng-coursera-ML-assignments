function [J, grad] = linearRegCostFunction(X, y, Theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(Theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

temp = Theta;
temp(2:end,:) = temp(2:end,:).^2;
temp  = (lambda/(2*m))*sum((temp(2:end,:)));

J = (1/(2*m))*sum(((X*Theta) - y).^2) + temp;

temp = (1/m)*sum(((X*Theta) - y).*X);
grad  = transpose((1/m)*sum(((X*Theta) - y).*X)) + (lambda/m).*Theta;
grad(1) = temp(1);







% =========================================================================

grad = grad(:);

end
