function A=swap(A,l,s)
  temp=A(l,:);
  A(l,:)=A(s,:);
  A(s,:)=temp;
endfunction
