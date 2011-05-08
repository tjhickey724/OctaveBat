function f = nearHundred(n)

% Given an int n, return true if it is within 10 of 100 or 200.

% Gabriel Guerra
% 5/4/2011

if ~isnumeric(n) & length(n) == 1
	disp('Error: n must be a numeric int.')
	f = -1;
else
	if abs(100 - n) <= 10 | abs(200 - n) <= 10
		f = 1;
	else
		f = 0;
	end
end