function lambda = sturm(a,b,d,e)
  epsilon = 10e-5;
  w = (a + b)/ 2;
  raw = [];
  rwb = [];
  if((abs(a - b)) <= epsilon)
      lambda = w;
  else
    msa = msinal(a,d,e);
    msb = msinal(b,d,e);
    msw = msinal(w,d,e);

    if((msa - msw) >= 1)
      raw = sturm(a,w,d,e);
    endif
    
    if((msw - msb) >= 1)
      rwb = sturm(w,b,d,e);
    endif
    
    lambda = [raw rwb];
  endif
endfunction