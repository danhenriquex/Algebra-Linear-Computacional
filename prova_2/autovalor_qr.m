function lambda = autovalor_qr(A)
  epsilon = 10e-3;
  [Z R] = QR(A);
  Z = A * Z;
  while(-1)
    [Z R] = QR(Z);
    Z = A * Z
    lambda = diag(Z);
    r = sum(sum(abs(Z - diag(lambda))));
    if r < epsilon
      break;
    endif
  endwhile
endfunction