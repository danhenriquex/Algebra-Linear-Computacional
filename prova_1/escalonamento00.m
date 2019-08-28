function [U]=escalonamento01(A)
  [m, n]=size(A);
  
  for j=1:n
    
    [pivot pos]=max(abs(A(j:m,j)));
    pos=(pos+j)-1;
    swap(A,j,pos);
    
    pivot=A(j,j);
    
    for i=j+1:m
      mult=A(i,j)/pivot;
      A(i,:)=A(i,:)-(A(j,:)*mult);
    endfor
 
  endfor

  U=A;
endfunction