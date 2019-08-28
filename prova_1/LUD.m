function [L U D] = LUD(A)

[m n] = size(A);
L = eye(n);
D = zeros(n);

for j = 1:n
  pivot = A(j,j);
  for i = j+1:m
    mult = ( A(i,j) / pivot);
    L(i ,j) = mult;
    A(i,:) = A(i,:) - A(j,:)* mult;
  endfor
  D(j,j) = A(j,j);
  A(j,j) = 1;
  
endfor

U = A;

endfunction