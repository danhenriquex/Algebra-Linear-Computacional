function [a b] = intervalo(d ,e)
  n = size(d,1);
  r = zeros(n,1);
  r(1) = abs(e(1));
  r(n) = abs(e(n-1));
  for i = 2:(n-1)
    r(i) = abs(e(i-1)) + abs(e(i));
  endfor
  b = max(d + r);
  a = min(d - r);
endfunction