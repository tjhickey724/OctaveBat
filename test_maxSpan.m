% Stuart Davis
% HW4

% Tested by Josh Silverman
% Tested by Antonio Cancio and added test case
# Tested/expanded by Ben Setel

function e = test_maxSpan()
	% maxSpan(int[] n) Consider the leftmost and righmost appearances of some
	% value in an array. We'll say that the "span" is the number of elements 
	% between the two inclusive. A single value has a span of 1. Returns the 
	% largest span found in the given array. (Efficiency is not a priority.).
	
	% test_maxSpan() runs unit tests on maxSpan(array) and returns the number that fail
	e = 0;
	e = e + runTest([0], 1);
	e = e + runTest([0,0], 2);
	e = e + runTest([0,1,0], 3);
	e = e + runTest([0,1,0,1,0], 5);
	e = e + runTest([0,1,0,1], 3);
	e = e + runTest([0,1,2,1,3,2,4,0], 8);
	e = e + runTest([0,1,0,2,3,3,2], 4);
	e = e + runTest([], 0);
	e = e + runTest([0 1 2 3 4 5 6 7 8 9 10], 1);
	e = e + runTest([0 1 2 3 4 5 6 7 8 9 1 9 9 9 9 9 9 9 9 9 9 9 9 0], 24);
	e = e + runTest([0 1 2 3 4 5 6 7 8 9 1 9 9 9 9 9 9 9 9 9 9 9 9 0 1], 24);
	e = e + runTest([0 0 0 0 0 1 0 0 1], 9);
	e = e + runTest([-1 0 0 0 0 1 0 0 1], 8);
	e = e + runTest([-1 0 0 0 0 1 0 0 -1], 10);
	
	function k = runTest(array,answer)
		% runTest(array,answer) - checks that maxSpan(array) == answer
		result = maxSpan(array);
		if (result == answer)
			k = 0;
			fprintf('        maxSpan( [ ');
			fprintf('%d ',array);
			fprintf('] ) -> %d\n',answer);
		else
			k = 1;
			fprintf('ERROR!  maxSpan( [ ');
			fprintf('%d ',array);
			fprintf('] ) -> %d  <> %d\n',result,answer);
		end
	end
end

