% Tarif Riyad Rahman
% COSI-177A
% Given a string, count the number of words ending in 'y' or 'z' -- so the 'y' in "heavy" and the 'z' in "fez" count, but not the 'y' in "yellow" (not case 
% sensitive). We'll say that a y or z is at the end of a word if there is not an alphabetic letter immediately following it. (Note: Character.isLetter(char) tests if % a char is an alphabetic letter.) 


         
function count=countYZ(str)

    count=0;
    
    str1=strcat(str,'-');
    
    length(str1);
    
    for i=1:length(str1)
       
        if str1(i)=='y' || str1(i)=='Y'
              
            if isletter(str1(i+1))==0
                count=count+1;
            end
        end
        
        if str1(i)=='z' || str1(i)=='Z'
              
            if isletter(str1(i+1))==0
                count=count+1;
            end
        end
        
        
    end
   

end
