function e=test_bunnyEars()
% test_bunnyEars() runs several tests and returns
% the number of tests that fail
% Author: Mehreen Asad
% Homework#4 
% Due date: 2/17/2011 
  
% Modified by Sean Kilachand Added test case
% Modified by Antonio Cancio on 04/28/2011 added test case
% Modified by Josh Silverman on 04/29/2011 good coverage. 
	% one question: why is the arg type check in the test? 
	% shouldn't it be in the function? Seems like the test
	% is testing the test in this case, not the function.
% Tested by Adam Rosenbloom on 5-2-11
%   Everything looked good, but I agree with Josh -- it's unclear why you
%   check the argument in the test function rather than the function
%   itself. Also, runtest(10.5, 21) returns an error (expected), but it
%   seems strange because this error is supposde to appear and shouldn't be
%   counted as an error.  Added two test functions.
  e = 0;
 
  e = e + runtest(1,2);
  e = e + runtest(2,4);
  e = e + runtest(2,4);
  e = e + runtest(5,10);
  e = e + runtest(4,8);
  e = e + runtest(6,12);
  e = e + runtest(5,10);
  e = e + runtest(20,40);
  e = e + runtest(10,20);
  e = e + runtest(9,18);
  e = e + runtest(11,22);
  e = e + runtest(21,42);    
  e = e + runtest(10.5, 21);
  e = e + runtest(0, 0);
  e = e + runtest(200, 400); % Added by ASR
  e = e + runtest(90, 180); % Added by ASR
  
end

function e = runtest(b, answer)
% runtest(b,answer) - calls bunnyEars(b)
% to get the result, compares with the answer
% and returns an error statement and
% also prints out the correct test result
% result is computed by the function defined
% Answer is the one in the test case


  if mod(b,2) ~= 0 && mod(b,2) ~= 1
      e = 1;
      fprintf('ERROR: Must have a whole number of bunnies\n')
  else

  result = bunnyEars(b);

  if (result == answer)
    e=0;
    fprintf('      bunnyEars(%d)=%d\n', b,result);
  else
    e=1;
    fprintf('ERROR:bunnyEars(%d)->%d <> %d\n', b,result,answer);
  end
  end
end



  
