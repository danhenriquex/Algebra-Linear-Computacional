clc
clear all
more off

A=[3 17 10; 2 4 -2; 6 18 -12];

[l,k]=size(A);

E1=eye(l);
E21=E1;

pivot=A(1,1);

E1(1,3)=1;
E1(2,2)=1;
E1(3,1)=1;;
E1(1,1)=0;
E1(3,3)=0;

A1=E1*A;

pivot1=A(1,1);

E21(2,1)=-A(2,1)/A(3,1);
E21(3,1)=-A(1,1)/A(3,1);
E21(1,1)=1;
E21(3,3)=1;
E21(2,2)=1;

A2=E21*A1;

E22=eye(l);
M2=E22;

E22(2,2)=0;
E22(3,3)=0;
E22(2,3)=1;
E22(3,2)=1;

M2(3,2)=-A2(2,2)/A2(3,2);

A3=M2*E22*A2;

[m,n]=size(A3);

K=algoritmo321(A3);

[L U]=algoLU(K);