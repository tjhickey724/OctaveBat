function f = stringSplosion(s)

% Given a non-empty string like "Code" return a string like "CCoCodCode".

% Gabriel Guerra
% 5/4/2011

if ~ischar(s)
	disp('Error: s must be a character string')
	f = -1;
else
	if length(s) <= 1
		f = s;
	else
		f = [stringSplosion(s(1:length(s)-1)) s];
	end
end