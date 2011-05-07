% Tarif Riyad Rahman

% MATLAB Syntax used

%Given a string, return the length of the largest "block" in the string. A block is a run of adjacent chars that are the same.



function maxCount=maxBlock(str)

        count=0;
        maxCount=0;
        
        if length(str)~=0
            ch=str(1);
        end
        
        for i=1:length(str)
            
            if ch==str(i)
                count=count+1;
            
                if count>maxCount
                    maxCount=count;
                end
                
            else
                
                ch=str(i);
                
                if count>maxCount
                    maxCount=count;
                end
                
                count=1;
                
        end
            
        end
     if length(str)==0
            maxCount=0;
        end
        
end
