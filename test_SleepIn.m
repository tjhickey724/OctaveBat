function e=test_SleepIn()
% test_SleepIn runs several tests and returns
% the number of tests that fail
% Author: Iain Crosby
% Date 2/28/11

e=0;
e= e + runtest(true,true,true);
e= e + runtest(true,false,false);
e= e + runtest(false,true,true);
e= e + runtest(false,false,true);

end

function e=runtest(a,b,answer)
% runtest(a,b,answer) - calls SleepIn(a,b)
%  to get the result, compares with the answer
%  and returns 1 if an error 0 if not
%  also prints out the test results 

result = SleepIn(a,b);

	if (result == answer)
		e=0;
		fprintf(' SleepIn(%d,%d)=%d\n' ,a,b,result)
	else
		e=1;
		fprintf('ERROR: SleepIn(%d,%d) ->%d <> %d\n' ,a,b,result,answer)
	end
end