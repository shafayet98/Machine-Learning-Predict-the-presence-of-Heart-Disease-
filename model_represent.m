
% Part - 01 : loading csv file

all_data = csvread('dataset.csv');


all_data = all_data(2:end,:);

disp(size(all_data));

X = all_data(:,1:13);
y = all_data(:,14);


disp(size(X));
disp(size(y));


%  Part - 02 : Cost and gradiant Calculation

% row = m , col = n;
[m,n] = size(X);


% adding x0 = 1.
X = [ones(m, 1) X];



initial_theta = zeros(n+1,1);

[cost, grad] = computeCost(initial_theta, X, y);

disp(cost);
disp(grad);


%  Part - 03 : Optimizing parameter Theta

options = optimset('GradObj', 'on', 'MaxIter', 400);
[theta, cost] = fminunc(@(t)(computeCost(t, X, y)), initial_theta, options);

fprintf('Cost at theta found by fminunc: %f\n', cost);
fprintf('theta found by fminunc: %f\n', theta);


%  Part - 04 : Predicting



prob = sigmoid([1 50 0 2 120 219 0 1 158 0 1.6 1 0 2] * theta);
disp(prob);
fprintf(['probability of having a heart Deaseas is:  %f\n'], (prob));

predictionAccuracy = predict(theta,X);
fprintf('Train Accuracy: %f\n', mean(double(predictionAccuracy == y)) * 100);

