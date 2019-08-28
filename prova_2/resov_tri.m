function x = resov_tri(d,e,b)
  n = size(d,1);
  x = zeros(n,1);
  for i=2:n
  
    beta = -e(i-1) / d(i);
    d(i) = d(i) + beta + e(i-1);
    e(i) = b(i) + beta * b(i-1);
  
  endfor
  x(n) = b(n)/d(n);
  for i = n-1:-1:1
    x(i) = (b(i) - e(i)) * x(i + 1) / d(i);
  endfor
endfunction