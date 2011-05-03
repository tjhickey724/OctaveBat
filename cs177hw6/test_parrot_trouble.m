function test_parrot_trouble()
% test_parrot_trouble runs several tests and returns the number of tests that fail
%
% Tested by Adam Rosenbloom on 5-2-2011
%
% Cases 2,4,7 and 9 were incorrect. By the problem set up, if the parrot is
% not talking, then there cannot be trouble. This is confirmed by the
% example given on CodingBat parrotTrouble(false, 6) = false. I fixed all
% the cases so that they have the correct expected output! This was a
% fundamental mistake! Also added test case 10

% Tested by Sean Kilachand.  Added test case, added fprintf statement
% outputting the number of errors.  I used a negative value in the test
% case, as the function itself should handle this problem, as the value of
% hour must lie between 0 and 23.  In my solution in this case I set
% trouble = to false, but did not count it towards the total number of
% errors.  



    e = 0;
    e = e + runtest (true, 1, true); 
    e = e + runtest (false, 20, false); % Case 2 - expected output to false
    e = e + runtest (true, 13, false);
    e = e + runtest (false, 0, false); % Case 4 - expected output to false
    e = e + runtest (true, 21, true);
    e = e + runtest (true, 12, false);
    e = e + runtest (false, 7, false); % Case 7 - expected output to false
    e = e + runtest (true, 1, true);
    e = e + runtest (false, 22, false); % Case 9 - expected output to false
    e = e + runtest (true, 11, false);
    e = e + runtest(true, 7, false); % Added by ASR
    e = e + runtest (false, -1, 0);
    
   
    fprintf('\nErrors: %d\n\n', e); 
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
