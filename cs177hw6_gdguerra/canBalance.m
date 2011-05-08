function b = canBalance(a)

% Given a non-empty array, return true if there is a place to split the array so that the sum of the numbers on one side is equal to the sum of the numbers on the other side.

% return -1 for error
% Gabriel Guerra
% 5/4/2011

if ~isnumeric(a) | ~isvector(a)
	disp('Error: a must be a vector of numbers');
	b = -1
else
	b = 0;
	for i = [1:length(a)]
		if sum(a(1:i)) == sum(a(i + 1:length(a)))
			b = 1;
		end
	end
end