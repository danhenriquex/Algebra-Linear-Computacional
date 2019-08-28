function [MA] = escalonamento(A, b)

%A = [10 9 8 7; 6 5 4 3; 2 1 0 -1];
%b = [10, 20, 30, 40]';

MA=[A b];

epsilon=1e-6;

[m,n] = size(MA);

  if m>n
    MA=MA';
  endif

  % processo de escalonamento de A
  for j=1:m-1
    tempivot=0;
    for i=j:m
      if abs(MA(i,j))>epsilon
        pivot=MA(i,j);
        tempivot=1;
        break
      endif
    endfor
    if i>j
      % swap da linha i com a linha j
      temp=MA(j,:);
      MA(j,:)=MA(i,:);
      MA(i,:)=temp;
    endif
    if tempivot
      for i=j+1:m
        if abs(MA(i,j))>epsilon
          mult=-MA(i,j)/pivot;
          MA(i,:)=MA(i,:)+mult*MA(j,:);
        endif
      endfor
    endif
  endfor
endfunction