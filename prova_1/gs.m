function [Q,R]=gs(A)
  [m,n]=size(A);
  R = zeros(n,n);
  Q = zeros(m,n);
  for j = 1:n
     soma = zeros(m,1);
     for i = 1:j-1
       R(i,j) = Q(:, i)' * A( : , j);
       soma = soma + R(i,j)*Q(:, i );
     endfor
      
     v = A(:,j) - soma;
     R(j,j) = norm(v);
     Q(:,j) = v / R(j,j);
  endfor
endfunction