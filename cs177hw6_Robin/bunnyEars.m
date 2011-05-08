function ears = bunnyEars(n)
%count the no of bunny ears given the 
%number of bunnies
   %ears=zeros(N,1);
   if(n==0)
        ears=0;
   elseif(n==1)
       ears=2;
   else
       ears=2+bunnyEars(n-1);
   end

end

