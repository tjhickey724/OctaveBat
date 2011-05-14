function test_array_front9()
% test_array_front9 runs several tests and returns the number of tests that fail

% Modified by Huimin Jia - Changed Changed the input type to varargin and
% therefore changed the output format. You can input any number of ints to
% test it. At the bottom added anarray_front9 function to match it.
%Modified by seife kassahun
%modified some of the output function and added two test cases and it works good

    e = 0;
    e = e + runtest ([1, 2, 9, 3, 4], true);
    e = e + runtest ([3, 7, 9, 9], true);
    e = e + runtest ([4, 11, 8, 6, 99, 12], false);
    e = e + runtest ([9, 19, 29, 9],true);
    e = e + runtest ([0, 5, 7, 9, 9, 12], true);
    e = e + runtest ([11, 1, 21, 30], false);
    e = e + runtest ([9, 9, 9], true);
    e = e + runtest ([9, 5], true);
    e = e + runtest ([6, 2, 7, 3], false);
    e = e + runtest ([9999, 999, 99, 9], true);	
    e = e + runtest ([99999, 9999, 999, 99], false);	% by Gabriel Bronk
	e=e+runtest([-9 10 12 15],false);
	e=e+runtest([18/2 27/3],true);
	end;

function e = runtest (varargin,answer)
% runtest(varargin) - calls array_front9(varargin)
% to get the result, compares with the answer
% returns 0 if true and 1 if an error occurs
% will print out all the test results

result = array_front9(varargin);
if result == answer
   e = 0;
   fprintf('       array_front9(');
   fprintf('%d,',varargin);
   fprintf(')%d = %d\n', answer, result);
else
   e = 1;
   fprintf('ERROR: array_front9(');
   fprintf('%d,',varargin);
   fprintf(')->%d <> %d\n',answer, result);
end
end


