function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%



for i = 1:K
    sum = zeros(1,n);
    no_elements = 0;
    for j = 1:m
        if idx(j,1) == i
            sum = sum + X(j,:);
            no_elements = no_elements+1;
        end
    end
    centroids(i,:) = (1/no_elements)*sum;
end

%************ Alternate Solution **************************** 
% for i = 1:K
%       idx_i = find(idx==i);       %indexes of all the input which belongs to cluster j
%       centroids(i,:) = mean(X(idx_i,:)); % calculating mean using built-in function
%   end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% =============================================================


end

