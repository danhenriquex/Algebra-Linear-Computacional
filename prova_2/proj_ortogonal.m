function z =proj_ortogonal(v , w)

  z = (w' * v ) / (v' * v)* v;

endfunction