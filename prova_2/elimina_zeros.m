function p = elimina_zeros(p)
  n = size(p,1);
  p1 = [];
  for i = 1:n
    if(p(i) != 0)
      p1 = [p1 p(i)];
    endif
  endfor
  p = p1;
endfunction