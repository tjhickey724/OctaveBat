function f = gHappy(s)

% Return true if all the g's in the given string, s, are happy.

% We'll say that a lowercase 'g' in a string is "happy" if there is another 'g' immediately to its left or right.
% Gabriel Guerra
% 5/4/2011

if ~ischar(s)
	disp('Error: s must be a character array');
	f = -1;
else
	i = 2;
	f = [];
	a = ['g' s 'g'];
	
	while i < length(a)
		if a(i) == 'g'
			if a(i-1) == 'g' | a(i+1) == 'g'
				f = [f 1];
			else
				f = [f 0];
			end
		end
		i = i + 1;
	end
	
	if any(f == 0) | length(f) == 0 | length(s) == 1
		f = 0;
	else
		f = 1;
	end
end
