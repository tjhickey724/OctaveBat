function f = greenTicket(a,b,c)

% You have a green lottery ticket, with ints a, b, and c on it.

% If the numbers are all different from each other, the result is 0.
% If all of the numbers are the same, the result is 20.
% If two of the numbers are the same, the result is 10.
% Gabriel Guerra
% 5/4/2011

if ~(isnumeric(a) & isnumeric(b) & isnumeric(c))
	disp('Error: a, b, and c must be numeric.')
	f = -1;
else
	if a == b | b == c | a == c
		f = 10;
		if a == b & a == c
			f = 20;
		end
	else
		f = 0;
	end
end