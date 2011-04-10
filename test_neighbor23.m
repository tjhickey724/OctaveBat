function e=test_neighbor23()
% test_neighbor23 runs several tests 
% and returns the number of tests that fail
% author: Livia Bell
% date: March 1, 2011


  e=0;
  e = e + runtest(8,13,13);
  e = e + runtest(13,8,13);
  e = e + runtest(13,33,0);
  e = e + runtest(4,19,19);
  e = e + runtest(97,79,79);
  e = e + runtest(1,22,22);
  e = e + runtest(16,36,16);
  e = e + runtest(15,5,15);
  e = e + runtest(40,3,40);
  e = e + runtest(10,28,28);

end

function e=runtest(a,b,answer)
% runtest(a,b,answer) - calls neighbor23(a,b) 
% to get the result, compares with the answer and
% returns the 1 if an error 0 if not 
% also prints out the test results...

  result = neighbor23(a,b);
  
  if (result == answer)
    e=0;
    fprintf('     neighbor23(%d,%d)=%d',a,b,result);
  else 
    e=1;
    fprintf('ERROR:neighbor23(%d,%d)->%d<>%d\n',
  	  a,b,result,answer);
  end
end


