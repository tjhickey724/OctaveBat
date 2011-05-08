function e = test_num_21()
% test_num_21 runs several tests and returns the number of tests that fail

    e = 0;
    e = e + runtest (3,10,2,6,8,9,1);
    e = e + runtest (11,1,6,8,12,3,1);
    e = e + runtest (13,2,4,7,1,4,2);
    e = e + runtest (1,2,9,2,5,7,0);
    e = e + runtest (10,11,12,11,13,2,2);
    e = e + runtest (13,3,1,9,3,6,1);
    e = e + runtest (5,6,3,8,1,12,0);
    e = e + runtest (4,1,12,2,5,11,2);
    e = e + runtest (12,13,1,1,12,9,1);
    e = e + runtest (3,10,2,6,8,9,2)
    e = e + runtest (0,0,0,0,0,0,0); %added by Ian Reichek
end

function e = runtest (a,b,c,d,e,f,answer)
% runtest(a,b,c,d,e,f,answer) - calls num_21(a,b,c,d,e,f)
% to get the result, compares with the answer
% returns 0 if true and 1 if an error occurs
% will print out all the test results

    result = num_21(a,b,c,d,e,f);
    if (result == answer)
       e = 0;
       fprintf('  num_21(%d, %d, %d, %d, %d, %d) = %d\n', a,b,c,d,e,f,result);
    else
       e = 1;
       fprintf('ERROR: num_21(%d, %d, %d, %d, %d, %d)->%d <> %d\n', a,b,c,d,e,f,result, answer);
    end
end
