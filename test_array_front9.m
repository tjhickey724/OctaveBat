function test_array_front9()
% test_array_front9 runs several tests and returns the number of tests that fail

    e = 0;
    e = e + runtest (1, 2, 9, 7,true);
    e = e + runtest (3, 7, 1, 6,false);
    e = e + runtest (4, 11, 8, 6,true);
    e = e + runtest (3, 19, 29, 9,false);
    e = e + runtest (0, 5, 7, 9,true);
    e = e + runtest (11, 1, 21, 30,true);
    e = e + runtest (18, 9, 4, 3,false);
    e = e + runtest (1, 2, 9, 7,true);
    e = e + runtest (6, 2, 7, 3,false);
    e = e + runtest (17, 35, 100, 9,false)
end

function e = runtest (a, b, c, d, answer)
% runtest(a, b, c, d, answer) - calls array_front9(a, b, c, d)
% to get the result, compares with the answer
% returns 0 if true and 1 if an error occurs
% will print out all the test results

    result = array_front9(a, b, c, d);
    if (result == answer)
       e = 0;
       fprintf('  array_front(%d, %d, %d, %d) = %d\n', a , b, c, d, result);
    else
       e = 1;
       fprintf('ERROR: array_front(%d, %d, %d, %d)->%d <> %d\n', a, b,c, d, result, answer);
    end
end
