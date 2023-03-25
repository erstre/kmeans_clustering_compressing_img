# K-Means algorithm in MATLAB 
Matlab implementation of [k-Means](https://en.wikipedia.org/wiki/K-means_clustering) algorithm for image compression.

![ScreenShot](https://user-images.githubusercontent.com/128051856/227652826-ce7e61b1-c7fd-4e07-b559-717911b7fc39.png)

## Description
[k-Means](https://en.wikipedia.org/wiki/K-means_clustering) is an unsupervised machine learning algorithm used for clustering data. The goal of the algorithm is to partition a given set of data points into K clusters, where K is a predefined number. The algorithm starts by selecting K initial centroids randomly from the data set. Each data point is then assigned to the cluster corresponding to the nearest centroid. The centroids of the clusters are then updated as the mean of the data points in each cluster. This process of assigning data points to the nearest centroid and updating centroids is repeated iteratively until convergence is achieved, i.e., until the centroids stop changing or the maximum number of iterations is reached.

The k-means algorithm has several advantages, including its simplicity and efficiency in terms of computational complexity. However, it is sensitive to the initial placement of centroids and may converge to a local minimum rather than the global minimum. Additionally, it assumes that the clusters have a spherical shape and are of equal size, which may not always be the case in real-world data sets.

### Part I
In the first part of the code the k-means algorithm is implemented and employed on a dataset od random points. This part illustrates how the centroids chenge in each iteration.

### Prerequisites

The following software needs to be installed.

- ```MATLAB```

## Authors

[Errikos Streviniotis](https://www.linkedin.com/in/errikos-streviniotis/)
