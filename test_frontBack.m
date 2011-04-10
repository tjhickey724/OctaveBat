function y = test_frontBack();

% test_frontBack runs several tests on the
% frontBack function, displays frontBack's  
% output for each test, 
% and returns the number of tests that fail.
% Author: Gabriel Bronk
% 3/2/11

y = 0;
y = y + runtest('computers','somputerc');
y = y + runtest('will','lilw');
y = y + runtest('conquer','ronquec');
y = y + runtest('Earth','hartE');
y = y + runtest('Oh no!','!h noO');
y = y + runtest('be','eb');
y = y + runtest('antidisestablishmentarianism','mntidisestablishmentarianisa');
y = y + runtest('a','a');
y = y + runtest('radar','radar');
y = y + runtest(' radar','rrada ');
end



function q = runtest(a,answer);

% runtest(a,answer) calls frontBack(a)
% to get the result, compares with the answer
% and returns 1 if an error, 0 if not.
% It also prints out the test results.     


result = frontBack(a);

if (result == answer);
q = 0;
fprintf('frontBack(%s)=%s\n',a,result);
else
q = 1;
fprintf('ERROR:frontBack(%s)->%s <> %s\n',
       a,result,answer);

end

end
