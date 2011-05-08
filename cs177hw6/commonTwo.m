% Tarif Riyad Rahman
% MATLAB syntax used


%commonTwo(str1,str2) - Start with two arrays of strings, str1 and str2, 
%each in alphabetical order, possibly with duplicates. 
%Return the count of the number of strings which appear in both arrays. 
%The best "linear" solution makes a single pass over both arrays, 
%taking advantage of the fact that they are in alphabetical order.





function count=commonTwo(str1,str2)

    count=0;
    
    temp='';

    for i=1:length(str1)
       
        for j=1:length(str2)
            
            if strcmp(str1(i),str2(j))==1 && strcmp(str1(i),temp)==0 && strcmp(str2(j),temp)==0
                temp=str1(i);
                count=count+1;
                break;  
            end
        
        
        end

    end


end