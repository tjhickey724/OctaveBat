function count=test_alarm_clock()
% test_alarm_clock tests function alarm_clock and print out the result returned by alarm_clock and also prints out number of results failed the test
% seife kassahun
% Feb 2011


% Modified by Gabriel Guerra 5/1/2011
% Format fixed to match format used in class, test cases added

e=0

e = e + runtest(1,'False', '7:00');
e = e + runtest(5,'False', '7:00');
e = e + runtest(0,'False', '10:00');
e = e + runtest(6,'False', '10:00');
e = e + runtest(0,'True', 'off');
e = e + runtest(6,'True', 'off');

%added by Gabriel Guerra
e = e + runtest(-1, 'True', 'Error');
e = e + runtest(3, 'blahblah', 'Error');
e = e + runtest(5, 'True', '10:00');
%

fprintf"No of failed results are ",e
end% for function

% added by Gabriel Guerra

function e = runtest(a, b, ans)
if (a < 0 | a > 6)
	fprintf('Error: Day of Week input must be between 0 and 6\n\n');
	e = 1;
else if (~(strcmp(b, 'True') | strcmp(b, 'False')))
	fprintf('Error: string must be of form \'True\' or \'False\'\n');
	e = 1;
else if (strcmp(alarm_clock(a,b), ans))
	e = 0;
	fprintf('alarm_clock(%d, %s) = %s', a, b, ans);
else
	e = 1;
	fprintf('Error: alarm_clock(%d, %s) = %s', a, b, ans);
end
end
