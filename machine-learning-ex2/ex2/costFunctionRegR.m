function [J, grad] = costFunctionRegR(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
% J = (1/m)*sum(-y(1).*log(1./(1+exp(-X(1,:)*theta)))-(1-y(1)).*log(1-(1./(1+exp(-X(1,:)*theta(1))))));
i=size(theta);
grad = (1/m)*X'*((1./(1+exp(-X*theta)))-y);

for j=2:size(theta)
  J = (1/m)*sum(-y.*log(1./(1+exp(-X*theta)))-(1-y).*log(1-(1./(1+exp(-X*theta)))))+(lambda/2*m)*sum(theta(j).*theta(j));
  grad(j) = grad(j)+(lambda/m)*theta(j);
end








% =============================================================

end
