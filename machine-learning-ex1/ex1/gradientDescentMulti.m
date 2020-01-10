function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
n = length(theta()) - 1;
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta.
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

    newTheta = theta;
    for j = 1:(n+1)     % each theta_j - one for each feature, + 1
        sum = 0.0;

        for i = 1:m     % inner sigma - one for each datapoint
            h = theta' * X(i,:)';
            sum = sum + ( (h - y(i))*X(i, j) );
            %disp(sprintf("For i = %d: \n    h=%0.2f \n    sum=%d \n", i, h, sum));
            %disp(sprintf("i: %d", i));
            %disp(sprintf("h = %0.2f", h));
            %disp(sprintf("sum %d\n", sum));
            %pause;
        end

        newTheta(j) = theta(j) - (alpha/m)*sum;
        %disp(sprintf("sum = %0.2f \n", sum));
        %disp(sum);
        %disp(sprintf("theta = %0.2f \n\n", theta));
        %pause;
    end

    theta = newTheta;

    % ============================================================

    % Save the cost J in every iteration
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
