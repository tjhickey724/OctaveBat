%Given a string, return the sum of the digits 0-9 that appear in the string, ignoring all other characters. Return 0 if there are no digits in the string. (Note:       % Character.isDigit(char) tests if a char is one of the chars '0', '1', .. '9'. Integer.parseInt(string) converts a string to an int.)




function sum=sumDigits(str)


    sum=0;
   
     for i=1:length(str)
        
         if isstrprop(str(i), 'digit')
             sum=sum+str2num(str(i));
         
     end



     end

end
