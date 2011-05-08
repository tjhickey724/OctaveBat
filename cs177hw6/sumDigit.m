% Tarif Riyad Rahman
% MATLAB syntax used



% sumDigits(n) - Given a non-negative int n, 
% return the sum of its digits recursively (no loops). 
% Note that mod (%) by 10 yields the rightmost digit (126 % 10 is 6),
% while divide (/) by 10 removes the rightmost digit (126 / 10 is 12).


function sum=sumDigit(n)

   if n==0
       sum=0;
       
   else
       sum=mod(n,10)+sumDigit(floor(n/10));
   end