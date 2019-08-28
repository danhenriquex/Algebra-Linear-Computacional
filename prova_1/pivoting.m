clc
clear all
more off

A = [10 9 8 7; 6 5 4 3; 2 1 0 -1];
b = [10, 20, 30, 40]';

MA=[A b];

[m,n]=size(MA);

epsilon = 1e-10;

if m > n
  MA=MA';
endif

for rows=1:m
  entry=0;
  for col=rows+1:m
    if abs(MA(col-1,rows))>epsilon
      pivot = abs(MA(col-1,rows));
      epsilon=pivot;
      entry=1;
      continue
    endif
  endfor
  
  if col > rows
    troca=MA(col,:);
  endif
  
  if entry
    for col=rows+1:m
      if abs(MA(rows,col))>epsilon
        mult=-MA(rows,col)/pivot;
        A(col,:)=A(col,:) + mult*A(rows,:);
      endif
    endfor
  endif
endfor
