function [x] = subrev00(A,b);
  
  MA=[A b];
  
  [m,n] = size(MA);  
  x=zeros(m,1);

  for k=m:-1:1
    soma = 0;
    for j=k+1:m
      soma = soma + MA(k,j)*x(j);
    endfor
    x(k)=(MA(k,n)-soma)/MA(k,k);
  endfor
endfunction