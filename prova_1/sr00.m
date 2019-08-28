function [x]=sr00(U, b)
  [m,n]=size(U);
  
  b(n)=b(n)/U(n,n);
  for i=n-1:-1:1
    b(i)=(b(i)-U(i,i+1:n)*b(i+1:n))/U(i,i);
  endfor
endfunction

