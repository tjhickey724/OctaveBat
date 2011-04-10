function y = test_delDel()

% test_delDel runs several tests on the
% delDel function, displays delDel's  
% output for each test, 
% and returns the number of tests that fail.
% Author: Gabriel Bronk
% 3/2/11

y = 0;
y = y + runtest('computers','computers');
y = y + runtest('conquer','conquer');
y = y + runtest('Earth','Earth');
y = y + runtest('Oh no!','Oh no!');
y = y + runtest('delta','ta');
y = y + runtest('ftdel','ftdel');
y = y + runtest('tdel','tdel');
y = y + runtest('delt','t');
y = y + runtest(' del',' del');
y = y + runtest('DELta','DELta');
end



function q = runtest(a,answer);

% runtest(a,answer) calls delDel(a)
% to get the result, compares with the answer
% and returns 1 if an error, 0 if not.
% It also prints out the test results.     


result = delDel(a);

if (result == answer);
q = 0;
fprintf('delDel(%s)=%s\n',a,result);
else
q = 1;
fprintf('ERROR:delDel(%s)->%s <> %s\n',
       a,result,answer);

end

end