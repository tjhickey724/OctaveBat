function e=test_bunnyEars()
% test_bunnyEars() runs several tests and returns
% the number of tests that fail
% Author: Mehreen Asad
% Homework#4 
% Due date: 2/17/2011 
  
% Modified by Sean Kilachand
% Added test case
% Modified by Antonio Cancio on 04/28/2011 added test case
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



  
