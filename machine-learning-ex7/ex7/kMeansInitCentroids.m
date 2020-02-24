function centroids = kMeansInitCentroids(X, K)
%KMEANSINITCENTROIDS This function initializes K centroids that are to be
%used in K-Means on the dataset X
%   centroids = KMEANSINITCENTROIDS(X, K) returns K initial centroids to be
%   used with the K-Means on the dataset X
%

% You should return this values correctly
centroids = zeros(K, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should set centroids to randomly chosen examples from
%               the dataset X
%

%{Xcopy = X;

for i = 1:K
     idx = randi([1 size(Xcopy, 1)], 1, 1); % random index
     centroids(i,:) = Xcopy(idx, :);        % add row to centroid matrix
     Xcopy(idx, :) = [];                    % remove row from Xcopy
end
%}


% Initialize the centroids to be random examples
% Randomly reorder the indices of examples
randidx = randperm(size(X, 1));
% Take the first K examples as centroids
centroids = X(randidx(1:K), :);




% =============================================================

end
