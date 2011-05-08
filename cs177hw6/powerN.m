
% Tarif Riyad Rahman
% MATLAB syntax used


%powerN(base,n) - Given base and n  that are both 1 or more, 
% compute recursively (no loops) the value of base to the n power, 
% so powerN(3, 2) is 9 (3 squared).- (Tarif Riyad Rahman)end

function result=powerN(base,n)

    if n==0
        result=1;
    else
        result=base*powerN(base,n-1);

    end
