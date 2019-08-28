clc
clear all
more off

%A=[0 1 4; -2 7 4; -8 -10 5];
%A=[1 2 3; 4 5 6; 7 8 9];
A=[2 1 3 0; 0 1 2 3; 3 4 2 0];
%A=[1 0 3; 4 0 6; 7 0 9];

[AA p]=algo341(A);

%for k=1:n-1
%   swap(b,k,p(k));
%   b(k+1:n)=b(k+1:n)-b(k)*AA(k+1:n,k);
%endfor

%[x]=subrev00(AA, b);