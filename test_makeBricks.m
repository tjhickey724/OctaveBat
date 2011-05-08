function e=test_makeBricks()
% test_makeBricks
%
% this script tests the function makeBricks (in makeBricks.m)
% for several sets of inputs
% 
% these inputs are printed to the screen, as well as the output
% value we expect from makeBricks and the actual output of makeBricks
%
%   Marcus Kelly, March 1, 2011
%
e=0 ;
test_smalls =[  10  1   4   2   10  10  100 0   1   ] ;
test_bigs   =[  0   4   1   4   4   4   1   10  10  ] ; 
test_goals  =[  8   17  17  17  21  30  104 49  49  ] ;
test_shoulds=[  1   0   0   1   1   1   1   0   0   ] ;
     results=[] ; 


printf("no. smalls  no. bigs    goal length expect  result  \n") ; 


for i=1:length(test_bigs)

    results(i)=makeBricks(test_smalls(i),test_bigs(i),test_goals(i)) ; 
    printf("%8d    %8d    %8d    %4d    %4d\n", test_smalls(i), test_bigs(i), test_goals(i), test_shoulds(i), results(i)) ;
    if ( test_shoulds(i) != results(i) )
        e = e + 1 ;
    end

end

