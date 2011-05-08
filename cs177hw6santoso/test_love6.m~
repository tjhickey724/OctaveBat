function e = test_love6()
% test_love6 runs several tests and returns
% love6(a,b) should be true if a or b is six or if the sum or difference is 6
% it returns the number of tests that fail
% Author: Mehreen Asad
% Homework#4 
% Due date: 2/17/2011 

% Modifications:
% Tim Hickey, chaged the (2,2) case from true to false
% Josh Silverman, added new test
% Varenya Prasad

  e=0;
  
  e = e + runtest(1,6,true);
  e = e + runtest(2,2,false); % this was originally true, but should be false
  e = e + runtest(4,5,false);
  e = e + runtest(8,2,true);
  e = e + runtest(3,3,true);
  e = e + runtest(4,2,true);
  e = e + runtest(10,4,true);
  e = e + runtest(9,9,false);
  e = e + runtest(1,5,true);
  e = e + runtest(3,9,true);
  e = e + runtest(11,5,true);
  e = e + runtest(-2,-8,true); % this tests negative numbers
  e = e + runtest(4,10,true); % this tests biggest second for dif
  e = e + runtest(5,10,false);
  e = e + runtest(5,110,false); % changing this case ...
  e = e + runtest(50,11,false); % added a new test case
  e = e + runtest(0,-6, true);
  e = e + runtest(-10,-16, true);
  
end

function e = runtest(a,b,answer)
% runtest(a,b,answer) - calls love6(a,b)
% to get the result, compares with the answer
% and returns an error statement and
% also prints out the correct test result
% Prints out 1 if true and 0 if false
% result is computed by the function defined
% Answer is the one in the test case

  result = love6(a,b);

  if (result == answer)
    e=0;
    fprintf('      love6(%d,%d)=%d\n',a,b,result);
  else
    e=1;
    fprintf('ERROR:love6(%d,%d)->%d <> %d\n', a,b,result,answer);
  end
end



  
