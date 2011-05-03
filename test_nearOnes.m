function e=test_nearOnes()
% test_nearHundred runs several tests 
% and returns the number of tests that fail
% author: Livia Bell
% date: March 1, 2011
% Iain Crosby fixed two mistakes and added one case

  e=0;
  e = e + runtest(75,false);
  e = e + runtest(91,true);
  e = e + runtest(1002,false);% was true should be false icrosby
  e = e + runtest(202,true); % was false should be true icrosby
  e = e + runtest(5555,false);
  e = e + runtest(1234,false);
  e = e + runtest(500,false);
  e = e + runtest(108,true);
e= e + runtest(10101, false); %added this case icrosby
end

function e=runtest(a,answer)
% runtest(a,answer) - calls nearOnes(a) 
% to get the result, compares with the answer and
% returns the 1 if an error 0 if not 
% also prints out the test results...

  result = nearOnes(a);
  
  if (result == answer)
    e=0;
    fprintf('     nearOnes(%d)=%d',a,result);
  else
    e=1;
    fprintf('ERROR:nearOnes(%d)->%d<>%d\n',
  	  a,result,answer);
  end
end


