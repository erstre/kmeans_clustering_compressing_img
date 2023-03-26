function idx = findClosestCentroids(X, centroids)
%   computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

m = size(X, 1);

% Initialize
idx = zeros(m, 1);

for i =1:m
    c = zeros(K,1);
    for j = 1:K
        c(j) = sqrt(sum((X(i,:)-centroids(j,:)).^2));
    end
    [B,I] = mink(c,1);
    idx(i) = I;
end

end

