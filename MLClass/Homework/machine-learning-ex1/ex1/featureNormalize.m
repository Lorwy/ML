function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

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


%mu = mean(X);
%sigma = std(X);
%X_norm = (X - mu) ./ sigma;

m = length(mu);
n = size(X_norm, 1)

%fprintf('++++++ m =  %f \n', m);
%fprintf('++++++ n =  %f \n', n);

for i = 1 : m

	A = X(:,i);
	fprintf(' A = [%.0f] \n', [A]');
	avg = sum(A) / n;
	mu(i) = avg;
	%fprintf('++++++ avg =  %f \n', avg);

	for j = 1 : n
		X_norm(j,i) = X_norm(j,i) - avg;
		%fprintf('++++++ avg X_norm(%f,%f) =  %f \n',j,i, X_norm(j,i));
	end

	standard = std(A);
	sigma(i) = standard;

	for j = 1 : n
		X_norm(j,i) = X_norm(j,i) / standard;
		%fprintf('++++++ std X_norm(%f,%f) =  %f \n',j,i, X_norm(j,i));
	end

end







% ============================================================

end
