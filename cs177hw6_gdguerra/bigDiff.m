function f = bigDiff(a)

% Given an array length 1 or more of ints, return the difference between the largest and smallest values in the array.

% Note: the built-in Math.min(v1, v2) and Math.max(v1, v2) methods return the smaller or larger of two values.
% Gabriel Guerra
% 5/4/2011

if isvector(a) & ~iscell(a) & isnumeric(a)
	f = max(a) - min(a);
else
	disp('Error: a must be a vector of 1 or more ints');
end