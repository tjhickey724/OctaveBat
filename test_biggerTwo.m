function test_biggerTwo()

% runs 10 tests on biggerTwo, and returns the number of wrong responses

% Gabe Guerra Feb. 2011.

%Modified by Huimin Jia - Added some case: Decimal, more number, zero, and
%null' sum case.
% Modified by seife kassahun
%fractional numbers and square roots and it works good
% Clarified and seems to be working great - Great way to summarize the test
% results using num2str - Abhirup Das

e = 0;
e = e + runtest([1 2], [3 4], [3 4]);
e = e + runtest(4, [1 3 5], [1 3 5]); % Abhirup Das added this test case
e = e + runtest([3 4], [1 2], [3 4]);
e = e + runtest([1 1], [1 2], [1 2]);
e = e + runtest([2 1], [1 1], [2 1]);
e = e + runtest([2 2], [1 3], [2 2]);
e = e + runtest([1 3], [2 2], [1 3]);
e = e + runtest([6 7], [1 3], [6 7]);
e = e + runtest([-4 3], [-3 2], [-4 3]);
e = e + runtest([-1 -1], [1 1], [1 1]);
e = e + runtest([-10 1], [9 1], [9 1]);
e = e + runtest([-5 -6], [-7 -2], [-7 -2]); %testcase added by Siddhi Krishna. 
e = e + runtest([1 2], [9 10], [9 10]); %testcase added by Gabriel Bronk.
e = e + runtest([-5.2 4.3], [8.8 9.2], [8.8 9.2]); % added by Huimin Jia.
e = e + runtest([1 2 3 4 5 6], [1 2 3], [1 2 3 4 5 6]); % added by Huimin Jia.
e = e + runtest([0 0], [0 0 0], [0 0]); % added by Huimin Jia.
e = e + runtest([], [1], [1]); % added by Huimin Jia.
e = e + runtest([], [], []); % added by Huimin Jia.
e = e+runtest(1/2,5/2,5/2);
e =  e+runtest(sqrt(2),sqrt(5),sqrt(5));

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