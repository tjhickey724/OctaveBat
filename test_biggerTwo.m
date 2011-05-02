function test_biggerTwo()

% runs 11 tests on biggerTwo, and returns the number of wrong responses

% Gabe Guerra Feb. 2011.

e = 0;
e = e + runtest([1 2], [3 4], [3 4]);
e = e + runtest([3 4], [1 2], [3 4]);
e = e + runtest([1 1], [1 2], [1 2]);
e = e + runtest([2 1], [1 1], [2 1]);
e = e + runtest([2 2], [1 3], [2 2]);
e = e + runtest([1 3], [2 2], [1 3]);
e = e + runtest([6 7], [1 3], [6 7]);
e = e + runtest([-4 3], [-3 2], [-4 3]);
e = e + runtest([-1 -1], [1 1], [1 1]);
e = e + runtest([-10 1], [9 1], [9 1]);
e = e + runtest([-1 -3], [-2 -4], [-6 -8]);

fprintf('Failures: %d\n', e);
end

function e = runtest(a, b, ans)
% calls biggerTwo() on a and b
% returns 1 if test fails, 0 if it holds

if(isequal(biggerTwo(a, b), ans))
	e = 0;
	fprintf('biggerTwo([%s], [%s]) = [%s]\n\n',num2str(a), num2str(b), num2str(ans));
else
	e = 1;
	fprintf('Error: biggerTwo([%s], [%s]) != [%s]\n\n',num2str(a), num2str(b), num2str(ans));

end