function err = test_blueTicket()
err = 0;
err = err + runTestTicket(9, 28, 2, 0);
err = err + runTestTicket(12, 3, 2, 5);
err = err + runTestTicket(-10, 10, 0, 10);
err = err + runTestTicket(1, 8, 2, 10);
err = err + runTestTicket(23, 5, 1, 0);
err = err + runTestTicket(10, 0, 1, 10);
err = err + runTestTicket(11, 0, 1, 5);
err = err + runTestTicket(1.25, 8.75, 20, 10);
err = err + runTestTicket(-10, -10, 0, 0);
err = err + runTestTicket(-10, 0, 1, 0); %changed this case to test git
err = err + runTestTicket(250, 5, 240, 5); % Test runs fine, added this case...
end


function x = runTestTicket(d, e, f, correct)
ansr = blueTicket(d, e, f);
if ansr == correct
    x=0; 
    fprintf('blueTicket(%d, %d, %d) --> %d\n', d, e, f, ansr);
 else
   x=1; 
   fprintf('ERROR! blueTicket(%d, %d, %d) --> %d\n', d, e, f, ansr);
 end
end
