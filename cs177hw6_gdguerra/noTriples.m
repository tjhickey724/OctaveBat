function f = noTriples(n)

% Return true if the array does not contain any triples.

% Given an array of ints, we'll say that a triple is a value appearing 3 times in a row in the array.
% Gabriel Guerra
% 5/4/2011

if ~isnumeric(n)
	disp('Error: n must be a numeric vector')
	f = -1;
else
	f = 1;
	if length(n) > 3
		for i = [3:length(n)]
			if n(i) == n(i-1) & n(i) == n(i-2)
				f = 0;
			end
		end
	end
end