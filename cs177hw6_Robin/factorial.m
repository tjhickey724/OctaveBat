function[x]=factorial(n)
%Given n of 1 or more, the function return the factorial of n, 
%which is n * (n-1) * (n-2) ... 1
%results are computed recursively (without loops).
%author-Robin Jha
%date-02/21/2011

if(n==1 || n==0)
x=1;
else x=n*factorial(n-1);
end
sprintf('The factorial of %d is %d \n ',n,x)
end
