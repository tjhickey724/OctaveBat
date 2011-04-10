function test_lucky_sum()
%  test_lucky_sum tests whether the function lucky_sum works or not by 
%  calling on the function test_function and displaying the results to the
%  user.

global error;
error = 0;

test_function(1, 2, 3, 6)
test_function(13, 2, 3, 0)
test_function(13, 4, 13, 0)
test_function(1, 4, 13, 5)
test_function(1, 13, 2, 1)
test_function(13, 13, 13, 0)

if error == 0
    fprintf('The function works!\n')
else
    fprintf('The function has errors\n')
    
end

end

function test_function(a,b,c,answer)
%  test_function tests whether the function lucky_sum equals the correct
%  value as determined by people and prints a statement telling the user
%  if the function works or not for the particular input values.

global error;

if lucky_sum(a,b,c) == answer
    fprintf('lucky_sum(%d,%d,%d) = %d\n', a, b, c, answer)
else
    fprintf('lucky_sum(%d,%d,%d) does not equal %d. ERROR\n',...
        a, b, c, answer)
    error = error + 1;
end
            
end

