function [L U P] = LUP(A)
[m n] = size(A);
L = eye(n);
P = eye(n);
for j = 1:n 
  [pivot pos] = max(abs(A(j:m,j)));
  pos = (pos + j) - 1;
  A = swap(A, j, pos);
  P = swap(P, j, pos);
  pivot = A(j,j);
  for i = j+1:m
    mult = ( A(i,j) / pivot);
    L(i ,j) = mult;
    A(i,:) = A(i,:) - A(j,:)* mult;
  endfor
endfor
U = A;
endfunction