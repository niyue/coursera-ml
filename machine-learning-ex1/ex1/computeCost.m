function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
% theta: nx1
% thetaT: 1xn
% X: mxn
% x(i): nx1
% y: mx1
% what is n? what is m?
% n is the number of features + 1, length of theta
% m is the number of training examples

J = (1 / (2 * m)) * sum((hypothesis(theta, X) - y) .^ 2);


function H = hypothesis(theta, X)
	H = (theta' * X')';
end

% =========================================================================

end

%!test
%!assert (computeCost([1 2; 1 3], [0, 0], [1, 1]), 2)