function test_cigarParty()
%test_cigarParty() runs tests on cigarParty(cigars,isWeekend) and returns number of failed test and also prints out info about tests
%Author: Ritu Pradhan
%Date : 03/01/2011

% Modified by Sean Kilachand
% Changed syntax so file would runn properly
% Added a statement to output the number of errors
% Added 2 tests
	e = 0;
	e = e + runtest(50,false,true);
	e = e + runtest(30,false,false);
	e = e + runtest(70,true,true);
	e = e + runtest(30,true,false);
	e = e + runtest(40,false,true);
	e = e + runtest(80,true,true);
	e = e + runtest(59,false,true);
	e = e + runtest(0,true,false);
	e = e + runtest(39,true,false);
	e = e + runtest(-50,false,false);
    
    e = e + runtest(60.5, true, true);
    e = e + runtest(.5, false, false);
    
    fprintf('\nErrors: %d\n\n', e);
end

function e=runtest(cigars,isWeekend,answer)
%runtest(cigars,isWeekend,answer) calls cigarParty(cigars,isWeekend) to get the result and compares with the answer. and returns 1 if error and 0 if no error %and also prints out the test result.
	
	result = cigarParty(cigars,isWeekend);
	if (result == answer)
		e=0;
		fprintf('      cigarParty(%d,%d)=%d\n',cigars,isWeekend,result);
	else
		e=1;
		fprintf('ERROR:cigarParty(%d,%d)->%d != %d\n',cigars,isWeekend,result,answer);
    end
end