function G=cholesky(A)
  
  n=size(A,1);
  
  G=zeros(n,n);
  
  for j=1:n
    soma1=G(j,1:j-1)*G(j,1:j-1)';
    G(j,j)=sqrt(A(j,j)-soma1);
    for i=j+1:n
      soma2=G(i,1:j-1)*G(i,1:j-1)';
      G(i,j)=(A(i,j)-soma2)/G(j,j);
    endfor
  endfor
endfunction