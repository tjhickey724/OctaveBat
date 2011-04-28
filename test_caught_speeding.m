function count=test_caught_speeding()
% test_caught_speeding tests function caught_speeding and print out the result returned by caught_speeding and also prints out number of results failed the test
% seife kassahun
% Feb 2011
%
% Edited by Antonio Cancio on 04/28/2011 added test case and changed
% 'True' and 'False' to 1 and 0
ans=0

test1=caught_speeding(60, 0)
if test1!=0
   ans=ans+1;
end
test2=caught_speeding(65, 0)
if test2!=1
   ans=ans+1;
end
test3=caught_speeding(85, 1)
if test3!=1
   ans=ans+1;
end
test4=caught_speeding(75, 1)
if test4!=1
   ans=ans+1;
end
test5=caught_speeding(90, 0)
if test5!=2
   ans=ans+1;
end
test6=caught_speeding(40, 1)
if test6!=0
   ans=ans+1;
end
test7=caught_speeding(86, 1)
if test7!=0
   ans=ans+1;
end
fprintf"No of failed results are ",ans
endfunction% for function




