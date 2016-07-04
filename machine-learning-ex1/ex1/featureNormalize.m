function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
temp1 = X(:, 1);
temp2 = X(:, 2);
mean_temp1 = mean(temp1)
mean_temp2 = mean(temp2)
mu = [mean_temp1,mean_temp2];
temp1 = temp1 - mean_temp1 * ones(size(temp1));
temp2 = temp2 - mean_temp2 * ones(size(temp2));
std_temp1 = std(temp1);
std_temp2 = std(temp2);
sigma = [std_temp1, std_temp2];
temp1 = temp1/std_temp1;
temp2 = temp2/std_temp2;
X_norm = [temp1,temp2];

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       









% ============================================================

end
