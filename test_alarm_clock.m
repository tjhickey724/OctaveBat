function count=test_alarm_clock()
% test_alarm_clock tests function alarm_clock and print out the result returned by alarm_clock and also prints out number of results failed the test
% seife kassahun
% Feb 2011

ans=0

test1=alarm_clock(1,'False')
if !strcmp(test1,'7:00')
   ans=ans+1;
end
test2=alarm_clock(5,'False')
if !strcmp(test2,'7:00')
   ans=ans+1;
end
test3=alarm_clock(0,'False')
if !strcmp(test3,'10:00')
   ans=ans+1;
end
test4=alarm_clock(6,'False')
if !strcmp(test4,'10:00')
   ans=ans+1;
end
test5=alarm_clock(0,'True')
if !strcmp(test5,'off')
   ans=ans+1;
end
test6=alarm_clock(6,'True')
if !strcmp(test6,'off')
   ans=ans+1;
end
fprintf"No of failed results are ",ans
endfunction% for function
function y=alarm_clock(day,vacation)
%alarm_clock set the alarm based on the day of the week  including vacation day
% Seife Kassahun
%Feb 2011

if strcmp(vacation,"True")
     switch day
     case 0
       y="off";
     case 1
      y="10:00";
     case 2
      y="10:00";
     case 3
      y="10:00";
     case 4
      y="10:00";
     case 5
      y="10:00";
     otherwise
      y="off";
   endswitch
else
     switch day
     case 0
       y="10:00";
     case 1
      y="7:00";
     case 2
      y="7:00";
     case 3
      y="7:00";
     case 4
      y="7:00";
     case 5
      y="7:00";
     otherwise
      y="10:00";
   endswitch
endif
endfunction	




