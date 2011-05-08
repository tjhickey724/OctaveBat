function f = blackjack(a,b)

% Given two values a and b greater than zero, return whichever value is nearest to 21 without going over.

% Return value of a and b if both are the same. Return zero if they both go over. -1 for failure
% Gabriel Guerra
% 5/4/2011

if ~(length(a) == 1 & length(b) == 1)
	disp('Error: a and b must be of length 1');
	f = -1;
elseif ~((isnumeric(a) & a > 0) & (isnumeric(b) & b > 0))
	disp('Error: a and b must be integers greater than zero');
	f = -1;
else
	if a == b
		f = a;
	elseif a > 21 & b > 21
		f = 0;
	elseif a > 21 | b > 21
		f = min(a,b);
	else
		f = max(a,b);
	end
end