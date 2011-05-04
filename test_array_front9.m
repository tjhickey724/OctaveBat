function test_array_front9()
% test_array_front9 runs several tests and returns the number of tests that fail

% Tested by:
% Josh Silverman (expected arg is a vector, not unpacked elements; added bounds test)
% Sara Shahanaghi- Third to last test case changed to false b/c 9 not in first four.

    e = 0;
    e = e + runtest ([1, 2, 9, 7],true);
    e = e + runtest ([3, 7, 1, 6],false);
    e = e + runtest ([4, 11, 8, 6],false);
    e = e + runtest ([3, 19, 29, 9],true);
    e = e + runtest ([0, 5, 7, 9],true);
    e = e + runtest ([11, 1, 21, 30],false);
    e = e + runtest ([18, 9, 4, 3],true);
    e = e + runtest ([1, 2, 9, 7],true);
    e = e + runtest ([6, 2, 7, 3],false);
    e = e + runtest ([17, 35, 100, 9],true);
    e = e + runtest ([17, 9],true);
    e = e + runtest ([17, 35, 100, 4, 9],false);
    e = e + runtest ([9, 17, 35, 100, 9],true);
    e = e + runtest ([],false);
end

function e = runtest (array, answer)
% runtest(array, answer) - calls array_front9(array)
% to get the result, compares with the answer
% returns 0 if true and 1 if an error occurs
% will print out all the test results

    result = array_front9(array);
    if (result == answer)
       e = 0;
       fprintf('  array_front9(%s) = %d\n', mat2str(array), result);
    else
       e = 1;
       fprintf('ERROR: array_front9(%s)->%d <> %d\n', mat2str(array), result, answer);
    end
end
