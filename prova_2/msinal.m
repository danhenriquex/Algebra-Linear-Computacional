function  ms = msinal(w,d,e)
  ms = 0;
  p = poli_sturm(w,d,e);
  n = size(d,1);
  for i = 2:n+1
    if((p(i) * p(i-1)) < 0)
      ms = ms + 1;
    endif
  endfor
endfunction