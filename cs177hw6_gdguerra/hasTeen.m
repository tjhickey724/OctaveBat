function f = hasTeen(a,b,c)

% Given 3 int values, return true if 1 or more of them are in the range 13...19 inclusive.

% Gabriel Guerra
% 5/4/2011

if ~(isnumeric(a) & isnumeric(b) & isnumeric(c))
	disp('Error: a,b, and c must be numeric.')
else
	if (a >= 13 & a <= 19) | (b >= 13 & b <= 19) | (c >= 13 & c <= 19)
		f = 1;
	else
		f = 0;
	end
end