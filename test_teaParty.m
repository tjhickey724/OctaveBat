
% Changes made by Mehreen Asad
%(Added 5 test cases to catch errors and added a test case with 0 as input value.
%Deleted 4 test cases with non-integer values since the problem is supposed to deal only with
%positive and negative integers.
%Modified fprintf so that it shows both the correct value and the value passed in the function)

%Modified by Huimin Jia - Added a case.

function err = test_teaParty()

err = 0;
err = err + runTestParty(9, 28, 2);
err = err + runTestParty(6, 4, 0);
err = err + runTestParty(10, 5, 2);
err = err + runTestParty(18, 17, 1);
err = err + runTestParty(-1, 100, 0);
err = err + runTestParty(-10, -50, 0);
err = err + runTestParty(40, -40, 0);
err = err + runTestParty(0, 0, 0);
err = err + runTestParty(0, 4, 0);
err = err + runTestParty(1, 2, 0);
err = err + runTestParty(0, -100, 0);
err = err + runTestParty(11, 4, 0);
err = err + runTestParty(-4, 8, 0); %added by Siddhi Krishna
err = err + runTestParty(36, 6, 2); %added by Huimin Jia

end

function x = runTestParty(t, c, correct)
ansr = teaParty(t, c);
if ansr == correct
    x=0; 
fprintf('       teaParty(%d,%d) = %d\n' , t, c, ansr);
 else
   x=1; 
fprintf('ERROR! teaParty(%d, %d) --> %d <> %d\n', t, c,ansr,correct);
 end
end



 

  
  

