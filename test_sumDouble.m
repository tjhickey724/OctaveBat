function e=test_sumDouble()
% test_sumDouble runs several tests and returns
% the number of tests that fail
% Author: Mehreen Asad
% Homework#4 
% Due date: 2/17/2011
%
% Tested by Adam Rosenbloom on 5-2-2011
% Everything looks good! Added two test cases.
% add two tests for this function by Kai Wu

  e=0;
  
  e = e + runtest(1,3,4);
  e = e + runtest(2,2,8);
  e = e + runtest(4,5,9);
  e = e + runtest(4,4,16);
  e = e + runtest(3,2,5);
  e = e + runtest(4,2,6);
  e = e + runtest(10,11,21);
  e = e + runtest(9,9,36);
  e = e + runtest(1,5,6);
  e = e + runtest(3,0,3);
  e = e + runtest(-3,-3,-12);
  e = e + runtest(900, -53, 847); % Added by ASR
  e = e + runtest(0, 0, 0); % Added by ASR
  e = e + runtest(888,666,1554);% by Kai Wu
  e = e + runtest(-5,5,0.1);% by Kai Wu

  
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



  
