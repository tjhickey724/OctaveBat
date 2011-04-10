function e=test_sumDouble()
% test_sumDouble runs several tests and returns
% the number of tests that fail
% Author: Mehreen Asad
% Homework#4 
% Due date: 2/17/2011 


  e=0;
  
  e = e + runtest(1,3,4);
  e = e + runtest(2,2,8);
  e = e + runtest(4,5,9);
  e = e + runtest(2,2,4);
  e = e + runtest(3,2,5);
  e = e + runtest(4,2,7);
  e = e + runtest(10,11,21);
  e = e + runtest(9,9,36);
  e = e + runtest(1,5,6);
  e = e + runtest(3,0,3);
  
end

function e = runtest(a,b,answer)
% runtest(a,b,answer) - calls sumDouble(a,b)
% to get the result, compares with the answer
% and returns an error statement and
% also prints out the correct test result
% result is computed by the function defined
% Answer is the one in the test case

  result = sumDouble(a,b);

  if (result == answer)
    e=0;
    fprintf('      sumDouble(%d,%d)=%d\n',a,b,result);
  else
    e=1;
    fprintf('ERROR:sumDouble(%d,%d)->%d <> %d\n', a,b,result,answer);
  end
end



  
