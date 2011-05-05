function count=test_caught_speeding()
% test_caught_speeding tests function caught_speeding and print out the result returned by caught_speeding and also prints out number of results failed the test
% seife kassahun
% Feb 2011

ans=0

test1=caught_speeding(60,'False')
if test1!=0
   ans=ans+1;
end
test2=caught_speeding(65,'False')
if test2!=1
   ans=ans+1;
end
test3=caught_speeding(85,'True')
if test3!=1
   ans=ans+1;
end
test4=caught_speeding(75,'True')
if test4!=1
   ans=ans+1;
end
test5=caught_speeding(90,'False')
if test5!=2
   ans=ans+1;
end
test6=caught_speeding(40,'True')
if test6!=0
   ans=ans+1;
end
fprintf"No of failed results are ",ans
endfunction% for function

function y=caught_speeding(speed,is_birthday)
% caught_speeding calculates checks the speed of a driver and fine the driver based on the speed range
% seife Kassahun
% feb 2011
if strcmp(is_birthday ,"True")
   y=0;
elseif speed<=60
   y=0;
elseif speed>=61 & speed<=80
   y=1;
else
   y=2;

endif
endfunction




