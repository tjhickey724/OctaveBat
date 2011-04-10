function test_sortaSum()

% runs 10 tests on sortaSum, and returns the number of wrong responses

% Gabe Guerra Feb. 2011.

e = 0;
e = e + runtest(3,4,7);
e = e + runtest(9,4,20);
e = e + runtest(10,11,21);
e = e + runtest(12,-3,9);
e = e + runtest(-3,12,9);
e = e + runtest(4,5,9);
e = e + runtest(4,6,20);
e = e + runtest(14,7,21);
e = e + runtest(14,6,20);
e = e + runtest(14,5,20);

fprintf('Failures: %d\n', e);
end

function e = runtest(a, b, ans)
% calls sortaSum() on a and b, and comparest it to ans
% returns 1 if test fails, 0 if it holds

if(sortaSum(a, b) == ans)
	e = 0;
		fprintf('sortaSum(%d, %d) = %d\n\n', a, b, ans);

else
	e = 1;
	fprintf('Error: sortaSum(%d, %d) != %d\n\n', a, b, ans);

end