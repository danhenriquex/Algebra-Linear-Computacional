#Calcular a projeção ortogonal de um vetor v sobre w

function z=proj_ortogonal(v,w)
  
  z=((w'*v)/(v'*v))*v;
  
endfunction