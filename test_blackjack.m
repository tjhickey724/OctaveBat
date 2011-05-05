function e = test_blackjack()

% test_blackjack() runs several tests and returns the number of tests that
% fail.
%
% Adam Rosenbloom on 3-1-2011

e = 0;
e = e + runtest(19, 21, 21);
e = e + runtest(21, 19, 21);
e = e + runtest(19, 22, 19);
e = e + runtest(22, 19, 19);
e = e + runtest(2, 15, 15);
e = e + runtest(14, 2, 14);
e = e + runtest(23, 17, 17);
e = e + runtest(18, 22, 18);
e = e + runtest(22, 22, 0);
e = e + runtest(11, 11, 11);
e = e + runtest(-2, -4, -2); %added by Siddhi Krishna

if e == 0
    fprintf('Tests succesful!')
else
    fprintf('One or more tests failed!')
end
end

function e = runtest(a, b, answer)

% runtest(a, answer) calls blackjack(a, b) to get the result, compares with
% the answer and returns true (1) if there is an error and false (0) if
% there is not.  Displays test results.

result = blackjack(a, b);

if (result == answer)
    e = 0;
    fprintf('\tblackjack(%d, %d) = %d\n', a, b, result)
else
    e = 1;
    fprintf('\tERROR: blackjack(%d, %d) returned %d\n\t\t%d expected\n', a, b, result, answer)
end
end