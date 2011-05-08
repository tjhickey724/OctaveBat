function e=test_closeFar()
% test_closeFar
%
% this script tests the function closeFar (in closeFar.m) with
% several sets of values.
%
% it outputs the values fed to closeFar, the expected output of closeFar
% and the actual output of closeFar for those inputs.
%
%   Marcus Kelly, March 1, 2011
%

e=0 ; 

test_a  =[  1   3   2   3   1   2   5   10  6   10  10  ] ;
test_b  =[  2   2   3   1   3   1   6   6   5   10  9   ] ; 
test_c  =[  3   1   1   2   2   3   10  5   10  8   8   ] ;
expect  =[  0   0   0   0   0   0   1   0   1   1   0   ] ;
     results=[] ; 


printf("a           b           c           expect  result  \n") ; 


for i=1:length(test_a)

    results(i)=closeFar(test_a(i),test_b(i),test_c(i)) ; 
    printf("%8d    %8d    %8d    %4d    %4d\n", test_a(i), test_b(i), test_c(i), expect(i), results(i)) ;
    if ( results(i) != expect(i) )
        e = e + 1 ;
    end
end

