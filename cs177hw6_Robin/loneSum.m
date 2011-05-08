function sum = loneSum( val1,val2,val3 )
%Given 3 int values, a b c, return their sum. However, if one of the values
%is 13 then it does not count towards the sum and values to its right do not count. 
%So for example, if b is 13, then both b and c do not count
if val1==val2
      sum=val3;             
elseif val2==val3
    sum=val1;
elseif val1==val3
    sum=val2;
else
    sum=val1+val2+val3;
end
sum
end

