function e = test_nyseClosed()

% test_nyseClosed runs several tests and returns the number of tests that
% fail.
%
% Adam Rosenbloom on 3-1-2011

e = 0;
e = e + runtest('25-Dec-1980', true); % Christmas
e = e + runtest('25-Dec-1966', true); % Christmas
e = e + runtest('01-Mar-2011', false);
e = e + runtest('05-Jul-2010', true); % Independence Day
e = e + runtest('25-May-2009', true); % Memorial Day
e = e + runtest('13-Jun-1966', false);
e = e + runtest('21-Feb-2000', true); % President's Day
e = e + runtest('20-Jan-2003', true); % MLK Day
e = e + runtest('27-Nov-1986', true); % My sister's birthday, Thanksgiving
e = e + runtest('14-Nov-1984', false);
e = e + runtest('07-Jan-1989', true); % My birthday, a Saturday

if e == 0
    fprintf('Tests succesful!')
else
    fprintf('One or more tests failed!')
end
end

function e = runtest(x, answer)

% runtest(a, answer) calls nyseClosed(e) to get the result, compares with
% the answer and returns true (1) if there is an error and false (0) if
% there is not.  Displays test results.

result = nyseClosed(x);

if (result == answer)
    e = 0;
    fprintf('\tnyseClosed(%s) = %d\n', x, result)
else
    e = 1;
    fprintf('\tERROR: nyseClosed(%s) returned %d\n\t\t%d expected\n', x, result, answer)
end
end