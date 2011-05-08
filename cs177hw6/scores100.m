% Tarif Riyad Rahman
% MATLAB syntax used

%Given an array of scores, return true if there are scores of 100 next to each other in the array. The array length will be at least 2.


function bool=scores100(numArray)

    bool=0;

    for i=2:length(numArray)
       
        if numArray(i)==100 && numArray(i-1)==100
            bool=1;
        end
        
        
    end



end
