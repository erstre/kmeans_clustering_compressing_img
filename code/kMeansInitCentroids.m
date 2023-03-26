function centroids = kMeansInitCentroids(X, K)
%KMEANSINITCENTROIDS This function initializes K centroids that are to be 
%used in K-Means on the dataset X
%   centroids = KMEANSINITCENTROIDS(X, K) returns K initial centroids to be
%   used with the K-Means on the dataset X
%

% Initialize
centroids = zeros(K, size(X, 2));

% Randomly reorder the indices of examples
%randidx = randperm(size(X, 1));
% Take the first K examples as centroids
%centroids = X(randidx(1:K), :);
rng(0,'twister');
for i = 1:K
    r = randi([1 size(X, 1)],1,1);
    centroids(i,1) = X(r,1);
    centroids(i,2) = X(r,2);
    centroids(i,3) = X(r,3);
end

end

