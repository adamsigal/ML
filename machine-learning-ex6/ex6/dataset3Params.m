function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and
%   sigma. You should complete this function to return the optimal C and
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example,
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using
%        mean(double(predictions ~= yval))
%

constant_options = [0.01 0.03 0.1 0.3 1 3 10 30];
best_val = Inf;
ctr = 0;
for c_test = constant_options
    for sigma_test = constant_options
        ctr = ctr + 1;
        fprintf('Iteration %d\n', ctr);
        model = svmTrain(X, y, c_test, @(x1, x2) gaussianKernel(x1, x2, sigma_test));
        predictions = svmPredict(model, Xval);
        curr = mean(double(predictions ~= yval));
        if (curr < best_val)
            best_val = curr;
            C = c_test;
            sigma = sigma_test;
            fprintf('Updating: C=%.2f, sigma=%.2f\n', C, sigma);
        end
    end
end




% =========================================================================

end
