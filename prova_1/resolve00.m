clc
clear all
more off

n = 4;
%A=[1 2 3; 4 5 6; 7 8 9];
#A=[2 1 3 0; 0 1 2 3; 3 4 2 0; 4 2 0 1];
%A = rand(n);
A=[6 18 -12 20; 2 4 -2 1; 3 17 10 5];
%A=[1 2 3; 2 29 26; 3 26 61];
b=[1 2 30 2]';

MA=[A b];

B=escalonamento01(MA);

[x]=subrev00(B,b);