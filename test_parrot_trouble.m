function e = test_parrot_trouble()
% test_parrot_trouble runs several tests and returns the number of tests that fail

    e = 0;
    e = e + runtest (true, 1, true);
    e = e + runtest (false, 20, true);
    e = e + runtest (true, 13, false);
    e = e + runtest (false, 0, true);
    e = e + runtest (true, 21, true);
    e = e + runtest (true, 12, false);
    e = e + runtest (false, 7, true);
    e = e + runtest (true, 1, true);
    e = e + runtest (false, 22, true);
    e = e + runtest (true, 11, false)
end

function e = runtest (a, b, answer)
% runtest(a, b, answer) - calls parrot_trouble(talking, hour)
% to get the result, compares with the answer
% returns 0 if true and 1 if an error occurs
% will print out all the test results

    result = parrot_trouble(a, b);
    if (result == answer)
       e = 0;
       fprintf('  parrot_trouble(%d, %d) = %d\n', a , b, result);
    else
       e = 1;
       fprintf('ERROR: parrot_trouble(%d, %d)->%d <> %d\n', a, b, result, answer);
    end
end
