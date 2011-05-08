function test_luckySum()
% test_luckySum
% this script tests the function luckySum in luckySum.m
% with 8 different sets of values
% the script runs luckySum with those values, and displays
% the inputs, expected output, and acutal resulting output on the screen
%
%
%   Marcus Kelly, Mar 1, 2011
%
%
e=0 ; 
test_a      =[  1   1   1   13  13  2   2   6   ] ;
test_b      =[  2   2   13  2   2   4   13  13  ] ; 
test_c      =[  3   13  2   3   13  6   6   2] ;
      expect=[  6   3   1   0   0   12  2   6   ] ;
     results=[] ; 


printf("a       b       c       expect  result \n") ; 


for i=1:length(test_a)

    results(i)=luckySum(test_a(i), test_b(i), test_c(i)) ;
    printf("%4d    %4d    %4d    %4d    %4d\n", test_a(i), test_b(i), test_c(i), expect(i), results(i)) ;

    if ( results(i) != expect(i) )
        e = e + 1  ; 
    end

end

