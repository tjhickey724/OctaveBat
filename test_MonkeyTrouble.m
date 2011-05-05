% This script file assigns two variables, MonkeyA and MonkeyB, and determines
% whether or not they are both smiling. Smiling is determined by a rounded random
% value. If both or neither monkeys are smiling, then the script warns of impending
% poop flinging. If the monkeys are not in agreement, the script notifies you to 
% carry on. ZF 3/13/11

MonkeyA = round(rand(1));
MonkeyB = round(rand(1));
if MonkeyA==MonkeyB
fprintf('\nDuck!\n')
else
	fprintf('\nYoure golden\n')
end
