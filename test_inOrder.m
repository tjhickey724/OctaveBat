function e=test_inOrder()
% test_inOrder runs several tests and returns
% the number of tests that fail
% Author: Siddhi Krishna
% Date: 2/21/2011 


  e=0;
  e = e + runtest(1,2,3,true);
  e = e + runtest(2,1,3,false);
  e = e + runtest(1,1,1,false);
  e = e + runtest(2,2,1,false);
  e = e + runtest(10,20,20,false);
  e = e + runtest(10,20,30, true);
  e = e + runtest(10,19,20, true);
  e = e + runtest(-1, 0, 1, true);
  e = e + runtest(-1,-1, 0, true);
  e = e + runtest(-1,-1, -2, false);
  
end

function e=runtest(a,b,c,answer)
% runtest(a,b,c, answer) - calls inOrder(a,b,c)
%  to get the result, compares with the answer
%  and returns 1 if an error 0 if not
%  also prints out the test results ...

  result = inOrder(a,b,c);

  if (result == answer)
    e=0;
    fprintf('      inOrder(%d,%d,%d)=%d\n',a,b,c,result);
  else
    e=1;
    fprintf('ERROR:inOrder(%d,%d,%d)->%d <> %d\n',a,b,c,result,answer);
  end
end

