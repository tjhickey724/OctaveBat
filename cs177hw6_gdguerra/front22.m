function f = front22(s)

% Given a string, take the first 2 chars and return the string with the 2 chars added at both the front and back.

% If the string length is less than 2, use whatever chars are there. -1 for error
% Gabriel Guerra
% 5/4/2011

if ~ischar(s)
	disp('Error: s must be a character array');
	f = -1;
else
	if length(s) == 1
		f = [s s s];
	else
		a = [s(1:2)];
		f = [a s a];
	end
end