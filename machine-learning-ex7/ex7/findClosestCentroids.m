function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for i = 1:size(X,1)
    %fprintf('iteration %d\n', i);
    currX = X(i,:);
    min_d = Inf;
    for j = 1:K
        curr_d = sum( (currX - centroids(j,:)) .^ 2 );
        %fprintf('distance from centroid %d: %0.2f\n', j, curr_d);
        %fprintf('current min distance:  %0.2f\n', min_d);
        if curr_d < min_d
            %fprintf('UPDATE index %d to %d, distance: %.02f \n', i, j, curr_d);
            min_d = curr_d;
            idx(i) = j;
        endif
        %fprintf("\n");
    end
    %pause;
end





% =============================================================

end
