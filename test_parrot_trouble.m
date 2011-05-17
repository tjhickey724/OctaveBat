function e = test_parrot_trouble()
% test_parrot_trouble runs several tests and returns the number of tests that fail
%
% Tested by Adam Rosenbloom on 5-2-2011
%
% Cases 2,4,7 and 9 were incorrect. By the problem set up, if the parrot is
% not talking, then there cannot be trouble. This is confirmed by the
% example given on CodingBat parrotTrouble(false, 6) = false. I fixed all
% the cases so that they have the correct expected output! This was a
% fundamental mistake! Also added test case 10
% Iain Crosby added one case to test code
%edited by Sylvie

% Modified by: Huimin Jia - Added an additional case.

    e = 0;
    e = e + runtest (true, 1, true); 
    e = e + runtest (false, 20, false); % Case 2 - expected output to false
    e = e + runtest (true, 13, false);
    e = e + runtest (false, 0, false); % Case 4 - expected output to false
    e = e + runtest (true, 21, true);
    e = e + runtest (true, 12, false);
    e = e + runtest (false, 7, false); % Case 7 - expected output to false
    e = e + runtest (true, 1, true);
    e = e + runtest (false, 22, false); % Case 9 - expected output to false-edited by sylvie before it was false but it suppose to be true
    e = e + runtest (true, 11, false);
    e = e + runtest(true, 7, false); % Added by ASR
    e = e + runtest(true, 22, true); % Added this case icrosby
    e = e + runtest (false, 15, false); %Added by Huimin Jia
	e = e + runtest (true, 20, false); %Added by Liz Li
	e= e+runtest(true,5,true);%edited by sylvie
end


function e = runtest (a, b, answer)
% runtest(a, b, answer) - calls parrot_trouble(talking, hour)
% to get the result, compares with the answer
% returns 0 if true and 1 if an error occurs
% will print out all the test results

    result = parrot_trouble(a, b);
    if (result == answer)
       e = 0;
       printf('       parrot_trouble(%d, %d) = %d\n', a , b, result);
    else
       e = 1;
       printf('ERROR: parrot_trouble(%d, %d)->%d <> %d\n', a, b, result, answer);
    end;
end
