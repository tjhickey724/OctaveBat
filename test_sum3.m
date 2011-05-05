function count=test_sum3()
% test_sum3 test function sum3 and print out the result returned by sum3 and also prints out number of results failed the test
% seife kassahun
% Feb 2011

%test change file /Huimin Jia

ans=0

test1=sum3([1 2 3])
if test1!=6
   ans=ans+1;
end
test2=sum3([5 11 2])
if test2!=18
   ans=ans+1;
end
test3=sum3([7 0 0])
if test3!=7
   ans=ans+1;
end
test4=sum3([1 2 1])
if test4!=4
   ans=ans+1;
end
test5=sum3([1 1 1])
if test5!=3
   ans=ans+1;
end
test6=sum3([2 7 2])
if test6!=11
   ans=ans+1;
end
fprintf"No of failed results are ",ans
endfunction% for function




