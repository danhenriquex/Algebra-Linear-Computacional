function [A p]=algo341(A)
  n=size(A,1);
  p=zeros(n-1,1);
  epsilon=1e-7;
  
  for k=1:n-1
    v=A(k:n,k);
    v=abs(v);
    [val r]=max(v);
    r=r+k-1;
    swap(A,k,r);
    p(k)=r;
    
    if abs(A(k,k)) > epsilon
      linhas=k+1:n;
      A(linhas,k)=A(linhas,k)/A(k,k);
      A(linhas,linhas)=A(linhas,linhas)-A(linhas,k)*A(k,linhas);
    endif
  endfor
endfunction