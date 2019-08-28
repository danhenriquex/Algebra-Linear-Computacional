clc
clear all
more off

for n = 3:100
  m = n+n;
  
  A = rand(m,n);
  [Q R] = gs(A);
  
  sum(sum(Q*R - A))
endfor