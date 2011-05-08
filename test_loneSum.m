function e = test_loneSum()

% test_loneSum() runs several tests and returns the number of tests that
% fail.
%
% Adam Rosenbloom on 3-1-2011
% Sara Shahanaghi--added two additional tests

e = 0;
e = e + runtest(1, 2, 3, 6);
e = e + runtest(3, 2, 3, 2);
e = e + runtest(3, 3, 3, 0);
e = e + runtest(9, 9, 1, 1);
e = e + runtest(3, 7, 7, 3);
e = e + runtest(9, 7, 3, 19);
e = e + runtest(11, 6, 6, 11);
e = e + runtest(18, 22, 18, 22);
e = e + runtest(22, 22, 7, 7);
e = e + runtest(11, 11, 11, 0);
e = e + runtest(1, 99, 3, 103);
e = e + runtest(0, 0, 6, 6);
e = e + runtest(sqrt(1), sqrt(4), sqrt(9), 6); % Abhirup Das added one test

if e == 0
    fprintf('Tests succesful!')
else
    fprintf('One or more tests failed!')
end
end

function e = runtest(a, b, c, answer)

% runtest(a, b, c, answer) calls loneSum(a, b, c) to get the result, compares with
% the answer and returns true (1) if there is an error and false (0) if
% there is not.  Displays test results.

result = loneSum(a, b, c);

if (result == answer)
    e = 0;
    fprintf('\tloneSum(%d, %d, %d) = %d\n', a, b, c, result)
else
    e = 1;
    fprintf('\tERROR: loneSum(%d, %d, %d) returned %d\n\t\t%d expected\n', a, b, c, result, answer)
end
end