function centroids = computeCentroids(X, idx, K)
%   returs the new centroids by computing the means of the data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids.

% Useful variables
[m n] = size(X);

% Initialization
centroids = zeros(K, n);

c = zeros(K,1);
for i = 1:m
    c(idx(i)) = c(idx(i)) + 1;
    centroids(idx(i),:) = centroids(idx(i),:) + X(i,:);
end

for i = 1:K 
    centroids(i,:) = centroids(i,:)/c(i);
end

end

