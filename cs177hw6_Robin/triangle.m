function [blocks]=triangle(row)
%We have triangle made of blocks. The topmost row has 1 block,
%the next row down has 2 blocks, the next row has 3 blocks, and so on. 
%This function recursively computes the total number of blocks in such a triangle with the given number of rows.
%author-Robin Jha
%date-02/21/2011

count=0; 
if(row ==1)
   blocks=1+count
   
else if(row ==0)
   blocks=0
   
else
  blocks = count+row+triangle(row-1) 
end
end




