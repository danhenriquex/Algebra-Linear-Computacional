function  [d e]= Tri(A)
  [m n] = size(A);
  for i = 1:n-2
    x = A((i+1):n,i);
    sx = size(x,1);
    y = zeros(sx,1);
    y(1) = norm(x);
    w = x - y;
    Q = eye(sx) - 2*(w * w')/(w' * w);
    A((i+1):n,i) = y;
    A(i,(i+1):n) = y;
    A((i+1):n,(i+1):n) = Q * A((i+1):n,(i+1):n) * Q;
  endfor
  d = diag(A);
  for i = 1:n-1
  e(i) = A(i,i+1);
  endfor
endfunction