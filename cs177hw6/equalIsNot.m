% Tarif Riyad Rahman
% MATLAB syntax used

% Given a string, return true if the number of appearances of "is" anywhere in the string is equal to the number of appearances of "not" anywhere in the string (case 
% sensitive). 



function bool=equalIsNot(str)

     count_is=0;
     count_not=0;

     for i=1:length(str)-1
        
         if strcmp([str(i),str(i+1)],'is')
             count_is=count_is+1;
         end
     end

     for i=1:length(str)-2
        
         if strcmp([str(i),str(i+1),str(i+2)],'not')
             count_not=count_not+1;
         end
     end

     if count_is==count_not
         bool=1;
     else
         bool=0;
     end
end
