function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
cost=0;
hypo=((X*theta).-y).^2;
cost=sum(hypo,1);
k=sum((theta(2:end).^2),1)*lambda;
cost=cost+k;
cost=cost/(2*m);
J=cost;
grad0=((X*theta).-y)'*X;
grad0(1)=grad0(1)/m;
non_reg=(((X*theta).-y)'*X);
grad1=(non_reg(2:end))'+lambda*theta(2:end);
grad1=grad1/m;
grad=[grad0(1);grad1];









% =========================================================================

grad = grad(:);

end
