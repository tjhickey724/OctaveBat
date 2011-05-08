function e=test_count_code(s)
% count_code(s) runs tests on  count_code
% and returns number of failed tests
% also prints out info about tests
% author: Huimin Jia
% add 1 test item by Kai Wu

  e=0;
  e = e+ runtest('aaacodebbb',1);
  e = e+ runtest('codexxcode',2);
  e = e+ runtest('cozexxcope',2);
  e = e+ runtest('cozfxxcope',1);
  e = e+ runtest('xxcozeyycop',1);
  e = e+ runtest('cozcop',0);
  e = e+ runtest('abcxyz',0);
  e = e+ runtest('code',1);
  e = e+ runtest('c',0);
  e = e+ runtest('',0);
  e = e+ runtest('AAcodeBBcoleCCccoreDD',3);
  e = e+ runtest('AAcodeBBcoleCCccorfDD',2);
  e = e+ runtest('coAcodeBcoleccoreDD',3);
  e = e+ runtest('zcodecodeodedee',5);


end  
 

function e=runtest(a,answer)
% runtest(a,answer) - runs the count_code test

  result= count_code(a);
  
  if result==answer
    e=0;
    fprintf('       combo_string(%s)=%d\n',a,answer);
  else
    e=1;
    fprintf('ERROR: combo_string(%s)->%d <> %d\n',
      a,result,answer);
  end;
end