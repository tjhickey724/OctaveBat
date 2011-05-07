% Tarif Riyad Rahman
% MATLAB syntax used
%Given an array of scores, return true if each score is equal or greater than the one before. The array will be length 2 or more. 


function bool=scoresIncreasing(numArray)

        bool=1;
        
        for i=2:length(numArray)
        
            if numArray(i)<numArray(i-1)
            
                bool=0;
            end
        
        
        
        end
        


end
