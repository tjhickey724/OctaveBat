% Tarif Riyad Rahman
% MATLAB syntax used


% This is the test bed for the function commonTwo
% sample cases are used for testing the correctness of the function

%Modified By Ritu Pradhan
%Added null boundary test and 2 other testcases
% Modified By seife kassahun
% Added two test cases by using non alphabatic charcter and the function works fine
% Modified by Yohanes Santoso added two tests
function e=test_commonTwo()

e=0;

e=e+runtest(['a','c','x'],['b','c','d','x'],2);
e=e+runtest(['a','c','x'],['a','b','c','x','z'],3);
e=e+runtest(['a','b','c'],['a','b','c'],3);
e=e+runtest(['a','a','b','b','c'],['a','b','c'],3);
e=e+runtest(['a','a','b','b','c'],['a','a','b','b','c'],3);
e=e+runtest(['a','a','b','b','c'],['a','b','b','c','c'],3);
e=e+runtest(['b','b','b','b','c'],['a','b','b','b','c'],2);
e=e+runtest(['a','b','c','c','d'],['a','b','b','c','d','d'],4);
e=e+runtest(['a','a','b','b','c'],['b','b','b'],1);
e=e+runtest(['a','a','b','b','c'],['c','c'],1);
e=e+runtest(['$','^','v'],['$','$'],1);% added by siefe
e=e+runtest(['aa','bb'],['aa','bb','dd'],2);% added by seife
e=e+runtest([''],[''],0);
e=e+runtest(['a'],['a','b'],1);
e=e+runtest(['a'],['b'],0);
e=e+runtest(['a'],['b'],1);
e=e+runtest(['a'],['b'],2);
end


function e=runtest(str1,str2,answer)

      result=commonTwo(str1,str2);
      
      if result==answer
         
          e=0;
          
          fprintf('commonTwo(%s,%s)=%d\n',str1,str2,answer);
      else
          
          e=1;
          
          fprintf('commonTwo(%c,%c)=%d<>%d\n',str1,str2,result,answer);
          
          
          
      end



end