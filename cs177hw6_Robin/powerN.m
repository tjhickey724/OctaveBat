function val = powerN(x,n )
%Given a non-negative int n, return the sum of its digits recursively (no
%loops). Note that mod (%) by 10 yields the rightmost digit (126 % 10 is 6),
%while divide (/) by 10 removes the rightmost digit (126 / 10 is 12). 
%Robin Jha 05/06/2011
if (x==0) 
        val= 0;
    elseif(n==0)
        val=1;
    elseif (n>0)
        val= x* power(x,n-1);
    else
        val=((1/x)*power(x,n+1));
end
val
end

