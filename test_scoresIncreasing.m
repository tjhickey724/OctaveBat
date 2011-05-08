function test_scoresIncreasing()

% runs 10 tests on scoresIncreasing, and returns the number of wrong responses

% Gabe Guerra Feb. 2011.
% Test cases added by Tarif Riyad Rahman


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
e = e + runtest([-4 -2 -1 5 6], 0); %added by Siddhi Krishna
e = e + runtest([1 2 3 4],1); % added by Tarif Riyad Rahman

fprintf('Failures: %d\n', e);
end

function e = runtest(a, ans)
% calls scoresIncreasing() on a, and compares it to ans
% returns 1 if test fails, 0 if it holds

if(scoresIncreasing(a) == ans)
	e = 0;
	fprintf('sortaSum([%s]) = %d\n\n', num2str(a), ans);

else
	e = 1;
	fprintf('sortaSum([%s]) = %d\n\n', num2str(a), ans);
end
