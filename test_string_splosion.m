function e=test_string_splosion(s)
% string_splosion(s) runs tests on  string_splosion
% and returns number of failed tests
% also prints out info about tests
% author: Huimin Jia 


  e=0;
  e = e+ runtest('Code','CCoCodCode');
  e = e+ runtest('abc','aababc');
  e = e+ runtest('ab','aab');
  e = e+ runtest('x','x');
  e = e+ runtest('fade','ffafadfade');
  e = e+ runtest('There','TThTheTherThere');
  e = e+ runtest('Kitten','KKiKitKittKitteKitten');
  e = e+ runtest('Bye','BByBye');
  e = e+ runtest('Good','GGoGooGood');
  e = e+ runtest('Bad','BBaBad');


end  
 

function e=runtest(a,answer)
% runtest(a,answer) - runs the string_splosion test

  result= string_splosion(a);
  
  if strcmp(result,answer)
    e=0;
    fprintf('       combo_string(%s)=%s\n',a,answer);
  else
    e=1;
    fprintf('ERROR: combo_string(%s)->%s <> %s\n',
      a,result,answer);
  end;
end