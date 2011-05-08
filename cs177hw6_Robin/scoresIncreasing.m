function bool = scoresIncreasing(arr)
%Given an array of scores, return true if each score is equal or greater
%than the one before. The array will be length 2 or more
for i=1:length(arr)-1
    if arr(i)<= arr(i+1)
           bool=true;
    else
        bool=false;
        break;
    end   
end
bool
end

