function [L U] = algoLU(A)
  [m,n]=size(A);
  for j=1:n
    for i=j+1:m
      L(i,j)=A(i,j);
      U(i,j)=A(j,i);
    endfor
  endfor
endfunction