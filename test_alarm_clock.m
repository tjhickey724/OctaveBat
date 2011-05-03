function count=test_alarm_clock()
% test_alarm_clock tests function alarm_clock and print out the result returned by alarm_clock and also prints out number of results failed the test
% seife kassahun
% Feb 2011


% Modified by Gabriel Guerra 5/1/2011
% Format fixed to match format used in class, test cases added

% Tested by Adam Rosenbloom on 5-2-11
% Changed fprintf so that it ran in MATLAB (needed parentheses and single
% quotes, as well as %d so that it displayed a variable). Also changed
% single quote in an fprintf to '' since it is an escapable (was previously
% \' which must work in Octave, but did not in MATLAB). Changed 'else if'
% to 'elseif' (no space) so that it was accpetable MATLAB syntax. Changed
% variable name 'ans' to 'answer' because 'ans' is frequently overwritten
% by MATLAB. I spent a long time trying to figure out what was wrong with
% this intially (why my results weren't working though the function was
% correct)... this had boolean values as strings! i.e. 'True' and 'False'
% instead of true and false... the problem with this is these are not real
% booleans but strings! Then, some of the error guards Gabriel put in were
% using the strcmp function insted of actually comparing true and false
% values -- this is an important distintion! Also fixed various syntax
% errors. Finally added two of my own tests.

e = 0;

e = e + runtest(1,false,'7:00');
e = e + runtest(5,false,'7:00');
e = e + runtest(0,false,'10:00');
e = e + runtest(6,false,'10:00');
e = e + runtest(0,true,'off');
e = e + runtest(6,true,'off');

% added by Gabriel Guerra
e = e + runtest(-1, true, 'Error');
e = e + runtest(3, 5, 'Error'); % Here you entered blahblah as the second argument, MATLAB returns 'Undefined function or variable 'blahblah''. Changed to 5
e = e + runtest(5, true, '10:00');

e = e + runtest(3, true, '10:00'); % Added by ASR
e = e + runtest(4, false, '7:00'); % Added by ASR

fprintf('Number of failed results are: %d\n', e)
end% for function

% added by Gabriel Guerra

function e = runtest(a, b, answer)
    if (a < 0 || a > 6)
        fprintf('Error: Day of Week input must be between 0 and 6\n\n');
        e = 1;
    elseif (~(b == true || b == false))
        fprintf('Error: string must be of form ''True'' or ''False''\n');
        e = 1;
    elseif (strcmp(alarm_clock(a,b), answer))
        e = 0;
        fprintf('alarm_clock(%d, %s) = %s\n', a, b, answer);
    else
        e = 1;
        fprintf('ERROR: alarm_clock(%d, %s) = %s\n', a, b, answer);
    end
end