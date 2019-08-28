function pm = poli_sturm(w , d, e)
  n = size(d,1);
  pm(1) = 1;
  pm(2) = w - d(1);
  for i = 3:n+1
    pm(i) = (w - d(i-1)) * pm(i-1) - (e(i-2)^2) * pm(i-2);
  endfor
endfunction