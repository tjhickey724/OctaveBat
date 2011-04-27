function test_scoresIncreasing()

% runs 10 tests on scoresIncreasing, and returns the number of wrong responses

% Gabe Guerra Feb. 2011.

% Modified by Sean Kilachand
% changed test file to run correctly (loop of runtest was incorrect)
% Added specification when error occurs so user can see where it occured
% Added output message saying length of array must be 2 or greater (in case
%  where it is not)
% Added 2 test cases  

e = 0;
e = e + runtest([1 3 4], 1);
e = e + runtest([1 3 2], 0);
e = e + runtest([1 1 4], 1);
e = e + runtest([1 1 2 4 4 7], 1);
e = e + runtest([1 2 4 3 7], 0);
e = e + runtest([-5 4 11], 1);
e = e + runtest([-4 -5 4 5], 0);
e = e + runtest([-5 -4 4 5],1);
e = e + runtest([1 1 1 1 1], 1);
e = e + runtest([0 2 3 2 3], 0);
% added by Sean Kilachand
e = e + runtest([1], 1);
e = e + runtest([.5 .8 .9], 1);
%
fprintf('Failures: %d\n\n', e);
end

function e = runtest(a, ans)
% calls scoresIncreasing() on a, and compares it to ans
% returns 1 if test fails, 0 if it holds

%added by Sean Kilachand
if (length(a) <=1)
    e = 1;
    fprintf ('ERROR: Array must be of length 2 or greater\n\n');
%

else if(scoresIncreasing(a) == ans)
	e = 0;
	fprintf('sortaSum([%s]) = %d\n\n', num2str(a), ans);

else
	e = 1;
	fprintf('ERROR: sortaSum([%s]) = %d\n\n', num2str(a), ans);
    end
end
end