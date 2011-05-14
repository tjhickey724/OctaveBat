function e=test_combo_string(s)
% test_combo_string(s) runs tests on combo_string
% and returns number of failed tests
% also prints out info about tests
% author: Huimin Jia 
% add two tests for this function by Kai Wu
% another test added by Gabriel Bronk
% the 'good study' test was modified by Gabriel Bronk
% the "4989 12" test was modified by Gabriel Bronk

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
<<<<<<< HEAD
  e = e+ runtest('4989','12','12498912');
  e = e+ runtest('good','study','goodstudygood');
  e = e+ runtest('22hh','7g8j9k','22hh7g8j9k22hh');
=======
  e = e+ runtest('4989','12','498912');
  e = e+ runtest('good','study','goodgoodstudy');
  e = e+ runtest('HELLO','12','12HELLO12');
>>>>>>> 966be1c5031e93b7373ec4dfa0f7a6abdf1751d7

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