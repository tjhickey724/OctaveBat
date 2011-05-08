function sum = luckySum( val1,val2,val3 )
%Given 3 int values, a b c, return their sum. However, if one of the values
%is 13 then it does not count towards the sum and values to its right do not count. 
%So for example, if b is 13, then both b and c do not count
if val1==13
    sum=0;
elseif val2==13
    sum=val1;
elseif val3==13
    sum=val1+val2;
else
    sum=val1+val2+val3;
end
sum
end

