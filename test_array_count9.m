function e=test_array_count9()
%This function tests the validity of the function array_count9
%by testing it on several points and summing total number of tests that fail. 
%Sara Shahanaghi, HW #4

<<<<<<< HEAD
%Modified by Ritu Pradhan
%Added 2 testcases one empty case, one regular case and changed syntax of the print statements for printing out the output correctly as in the question.
=======
%Modifications
%Varenya Prasad--
% added test cases, modified the print statements including printing out the input correctly as an array
>>>>>>> f74deb03d36796affaff9e8c4e2dd3a10da113b7

  e=0;
  e = e + runtest([7,45,9,89,45,9,3,9,1],3);
  e = e + runtest([9,9,9,9],4);
  e = e + runtest([93,94,95,96,97,98,99],0);
<<<<<<< HEAD
  e = e + runtest([9,0,1,0,9],2);
  e = e + runtest([0],0);
  
  e = e + runtest([],0);
  e = e + runtest([9,9,9,9,9],6);
=======
  e = e + runtest([9,0,1,0,9],2); % added semi-colon
  e = e + runtest([0],0); % added semi-colon
  e = e + runtest([1,2,9],1);
  e = e + runtest([9],1);
  e = e + runtest([-9],0); % added negative check
>>>>>>> f74deb03d36796affaff9e8c4e2dd3a10da113b7
end

function e=runtest(X,answer)
%This function compares predetermined test points to the results of lastDigit for those given points. 
%Returns 1 if an error exists and 0 if does not

  result = array_count9(X,answer);

  if (result == answer)
    e=0;
<<<<<<< HEAD
	#fprintf('		array_count9(%s)->%d\n',mat2str(X),answer);
	fprintf('		array_count9[{'); fprintf('%d ',X); fprintf('}]=');fprintf('%d\n',result);
  else
    e=1;
	#fprintf("		ERROR!  array_count9(%d)->%d  <> %d\n",mat2str(X),result,answer);
	fprintf('		ERROR:array_count9[{');fprintf('%d ',X);fprintf('}]-->%d<>%d\n',result,answer);
=======
  fprintf('		array_count9(%s)->%d\n',mat2str(X),answer);
  
  else
    e=1;
  printf("ERROR!  array_count9(%d)->%d  <> %d\n",mat2str(X),result,answer);
>>>>>>> f74deb03d36796affaff9e8c4e2dd3a10da113b7
  end
  
end




