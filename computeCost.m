function [J, grad] = costFunctionOwn(theta, X, y)


m = length(y); % number of training examples

% Cost = J and Gradient = grad.

J = 0;
grad = zeros(size(theta));



% Calculation of cost function and Gradient.

g = 1 ./ (1+ exp(-(X * theta ))) ;

p1 = (y .* log(g) );
p2 = ((1 - y) .* log(1 - g));


J = - ( (1/m) * sum(p1 + p2)   );
grad = (1/m) * (X' * (g-y));


end
