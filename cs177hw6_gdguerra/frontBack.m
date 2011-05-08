function f = frontBack(s)

% Given a string, return a new string where the first and last characters have been exchanged.

% return -1 for error
% Gabriel Guerra
% 5/4/2011

if ~ischar(s)
	disp('Error: s must be a character array');
	f = -1;
else
	f = [s(length(s)) s(2:length(s) - 1) s(1)];
end