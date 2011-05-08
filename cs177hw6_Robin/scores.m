function y=scores(arr)
%Given an array of scores, the function return true(1) if there are scores of 100 
%next to each other in the array. 
%The array length will be at least 2. 
%author-Robin Jha
%date-02/21/2011
i=0;
if(length(arr)<2)
 sprintf('The length of the array has to be atleast 2 elements long')

else
for k=1:1:length(arr)-1
    if(arr(k)==100 && arr(k+1)==100)
	i=i+1;
        
        end
end
if(i==0)
  y=0;
  else
  y=1;
  
  end
end
end
    
		
