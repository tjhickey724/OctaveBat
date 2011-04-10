function err = test_teaParty()
err = 0;
err = err + runTestParty(9, 28, 2);
err = err + runTestParty(6, 4, 0);
err = err + runTestParty(10, 4.9, 0);
err = err + runTestParty(10, 5, 2);
err = err + runTestParty(18, 17, 1);
err = err + runTestParty(-1, 100, 0);
err = err + runTestParty(18, 9.1, 1);
err = err + runTestParty(101, 50.5, 2);
err = err + runTestParty(-10, -50, 0);
err = err + runTestParty(7/8, 1/2, 0);
end

function x = runTestParty(t, c, correct)
ansr = teaParty(t, c);
if ansr == correct
    x=0; 
    fprintf('teaParty(%d, %d) --> %d\n', t, c, ansr);
 else
   x=1; 
   fprintf('ERROR! teaParty(%d, %d) --> %d\n', t, c, ansr);
 end
end



 

  
  

