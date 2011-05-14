function e=test_MonkeyTrouble()

% This script file assigns two variables, MonkeyA and MonkeyB, and determines
% whether or not they are both smiling. Smiling is determined by a rounded random
% value. If both or neither monkeys are smiling, then the script warns of impending
% poop flinging. If the monkeys are not in agreement, the script notifies you to 
% carry on. ZF 3/13/11

%MonkeyA = round(rand(1));
%MonkeyB = round(rand(1));
%if MonkeyA==MonkeyB
%fprintf('\nDuck!\n')
%else
	%fprintf('\nYoure golden\n')
%end

%edited by Sylvie ,Iam rewritting all the test from 0 because it giving ,me errror
%original code are commented up
e=0;
e= e + runtest(true,true,true);
e= e + runtest(false,false,true);
e= e + runtest(false,true,false);
e= e + runtest(true,false,false);



end

function e=runtest(a,b,answer)
% runtest(a,b,answer) - calls SleepIn(a,b)
%  to get the result, compares with the answer
%  and returns 1 if an error 0 if not
%  also prints out the test results 

result = monkeyTrouble(a,b);

	if (result == answer)
		e=0;
		fprintf('      MonkeyTrouble(%d,%d) = %d\n' ,a,b,result)
	else
		e=1;
		fprintf('ERROR: MonkeyTrouble(%d,%d) -> %d <> %d\n' ,a,b,result,answer)
	end
end
