function test_array_front9()
% test_array_front9 runs several tests and returns the number of tests that fail
% Modified by Huimin Jia - Changed Changed the input type to varargin and
% therefore changed the output format. You can input any number of ints to
% test it. At the bottom added anarray_front9 function to match it.

    e = 0;
    e = e + runtest (1, 2, 9, 3, 4, true);
    e = e + runtest (3, 7, 9, 9, false);
    e = e + runtest (4, 11, 8, 6, 99, 12, false);
    e = e + runtest (9, 19, 29, 9,false);
    e = e + runtest (0, 5, 7, 9, 9, 12, true);
    e = e + runtest (11, 1, 21, 30, false);
    e = e + runtest (9, 9, 9, false);
    e = e + runtest (9, 5, false);
    e = e + runtest (6, 2, 7, 3, false);
    e = e + runtest (9999, 999, 99, 9, true)
end;

function e = runtest (varargin)
% runtest(varargin) - calls array_front9(varargin)
% to get the result, compares with the answer
% returns 0 if true and 1 if an error occurs
% will print out all the test results

N = length(varargin);

result = array_front9(varargin{1:N-1});
if result == varargin{N}
   e = 0;
   fprintf('       array_front9(');
   fprintf('%d,',varargin{1:N-2});
   fprintf('%d) = %d\n', varargin{N-1}, result);
else
   e = 1;
   fprintf('ERROR: array_front9(');
   fprintf('%d,',varargin{1:N-2});
   fprintf('%d)->%d <> %d\n', varargin{N-2}, result, varargin{N});
end;
end


function y = array_front9(varargin)
% Given an array of ints, return True if one of the first 4 elements  
% in the array is a 9. The array length may be less than 4.
% Author: Huimin Jia

  if length(varargin) < 4
      y = 0;
  else
      e = (9 ==[varargin{1},varargin{2},varargin{3},varargin{4}]);
      if sum(e) == 1
          y = 1;
      else 
          y = 0;
      end;
  end;
end