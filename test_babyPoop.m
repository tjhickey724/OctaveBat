function e=test_babyPoop()
% test_babyPoop runs several tests 
% and returns the number of tests that fail
% author: Livia Bell
% date: March 1, 2011


  e=0;
  e = e + runtest(true,true,'Disgusting!');
  e = e + runtest(false,true,'Do I have to change it?');
  e = e + runtest(true,false,'You just went an hour ago!');
  e = e + runtest(false,false,'Thank goodness');

end

function e=runtest(fFart,pFart,answer)
% runtest(fFart,pFart,answer) - calls babyPoop(fFart,pFart) 
% to get the result, compares with the answer and
% returns the 1 if an error 0 if not 
% also prints out the test results...

  result = babyPoop(fFart,pFart);
  
  if (strcmp(result,answer))
    e=0;
    fprintf('     babyPoop(%d,%d)=%s !!!\n',fFart,pFart,result);
  else
    e=1;
    fprintf('ERROR:babyPoop(%d,%d)->%s<>%s !!!\n',fFart,pFart,result,answer);
  end
end

