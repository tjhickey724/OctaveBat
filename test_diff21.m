function e = test_diff21()
% The following code runs the test for the function diff21 and returns the
% number of tests that fail
% Author: Abhirup Das 2/14/2011
% Start off by initializing e = 0
e = 0;
fprintf('Runs the test for the function diff21, and displays the answer \nIt also checks whether the answer is the same as the value inherent in our \ntest and reports if there are any errors in our test.\nIn that case we can simply go back to our code and clarify our mistake\nHere x is the value of diff21(n) where n is the integer\n')
fprintf('Number 21')
x = diff21(21)
if x ~= 0
    e = e + 1;
end
fprintf('Number 10')
x = diff21(10)
if x ~= 11
    e = e + 1;
end
fprintf('Number 2')
x = diff21(2)
if x ~= 19
    e = e + 1;
end
fprintf('Number 25')
x = diff21(25)
if x ~= 8
    e = e + 1;
end
fprintf('Number 30')
x = diff21(30)
if x ~= 18
    e = e + 1;
end
fprintf('Total Errors in test = %d\n', e)
end
