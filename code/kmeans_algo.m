clear ; 
close all; 
clc

% =================== Part 1: K-Means Clustering ======================

fprintf('\nRunning K-Means clustering on out dataset.\n\n');

% Load our dataset
load('dataset.mat');

% Settings for running K-Means
K = 3;
max_iters = 10;

% Randomly selected points
initial_centroids = [3 3; 6 2; 8 5];

% Run K-Means algorithm. The 'true' at the end tells our function to plot the progress of K-Means
[centroids, idx] = runkMeans(X, initial_centroids, max_iters, true);
fprintf('\nK-Means Done.\n\n');

fprintf('Program paused. Press enter to continue.\n');
pause;

% ============= Part 2: K-Means Clustering on Pixels ===============
%  Employ K-Means to compress an image:
%  1. run K-Means on the colors of the pixels in the image 
%  2. map each pixel on to it's closest centroid.

fprintf('\nRunning K-Means clustering on pixels from an image.\n\n');

%  Load an image
A = double(imread('images/bird_small.png'));

A = A / 255; % Divide by 255 so that all values are in the range 0 - 1

% Size of the image
img_size = size(A);

% Reshape the image into an Nx3 matrix where N = number of pixels.
% Each row will contain the Red, Green and Blue pixel values
% This gives us our dataset matrix X that we will use K-Means on.
X = reshape(A, img_size(1) * img_size(2), 3);

% Run your K-Means algorithm on this data
K = 30; 
max_iters = 15;

% Initialize the centroids randomly
initial_centroids = kMeansInitCentroids(X, K);


% Run K-Means
[centroids, idx] = runkMeans(X, initial_centroids, max_iters);

fprintf('Program paused. Press enter to continue.\n');
pause;


% ================= Part 3: Image Compression ======================

fprintf('\nApplying K-Means to compress an image.\n\n');

% Find closest cluster members
idx = findClosestCentroids(X, centroids);

for i= 1:size(X,1)
    X_recovered(i,:) = centroids(idx(i),:);
end

% Reshape the recovered image into proper dimensions
X_recovered = reshape(X_recovered, img_size(1), img_size(2), 3);

% Display the original image 
subplot(1, 2, 1);
imagesc(A); 
title('Original');

% Display compressed image side by side
subplot(1, 2, 2);
imagesc(X_recovered)
title(sprintf('Compressed, with %d colors.', K));

