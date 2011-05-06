function e=test_combo_string(s)
% test_combo_string(s) runs tests on combo_string
% and returns number of failed tests
% also prints out info about tests
% author: Huimin Jia 
% add two tests for this function by Kai Wu


  e=0;
  e = e+ runtest('a','bb','abba');
  e = e+ runtest('bb','a','abba');
  e = e+ runtest('ab','cddg','abcddgab');
  e = e+ runtest('','Hi','Hi');
  e = e+ runtest('Hi','','Hi');
  e = e+ runtest('aa','bb','error');
  e = e+ runtest('','','error');
  e = e+ runtest('45','2','2452');
  e = e+ runtest('hhh','h','hhhhh');
  e = e+ runtest('4989','12','498912');
  e = e+ runtest('good','study','goodgoodstudy');


end  
 

function e=runtest(a,b,answer)
% runtest(a,b,answer) - runs the combo_string test

  result= combo_string(a,b);
  
  if strcmp(result,answer)
    e=0;
    fprintf('       combo_string(%s,%s)=%s\n',a,b,answer);
  else
    e=1;
    fprintf('ERROR: combo_string(%s,%s)->%s <> %s\n',
      a,b,result,answer);
  end;
end