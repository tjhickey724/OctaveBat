function test_sortaSum()
% runs 10 tests on sortaSum, and returns the number of wrong responses
% Gabe Guerra Feb. 2011.

%modified by Sean Kilachand
% Corrected syntax
% Added 2 test cases

% Tested by Adam Rosenbloom on 5-2-11
%   Everything looked good, added tab before total numbers of failures, 
%   and also added two test cases.
% A test added by Gabriel Bronk

%Modified by Ritu Pradhan
% Added 2 test cases and modified the statement so that errors displays properly.

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
e = e + runtest(-10,10,0);
e = e + runtest(15.5, 2.8, 20);
e = e + runtest(21, -2, 20); % Added by ASR
e = e + runtest(-20, 5, -15); % Added by ASR

e = e + runtest(0,0,0);
e = e + runtest(-3,-3,-6);
e = e + runtest(-7,-11,-18); % Added by Gabriel Bronk

fprintf('Failures: %d\n', e);

end

function e = runtest(a, b, ans)
% calls sortaSum() on a and b, and comparest it to ans
% returns 1 if test fails, 0 if it holds
result = sortaSum(a, b);
if(result == ans)
	e = 0;
		fprintf('sortaSum(%d, %d) = %d\n\n', a, b, result);

else
	e = 1;
	fprintf('ERROR: sortaSum(%d, %d)->%d<> %d\n',a, b,result,ans);
end
end