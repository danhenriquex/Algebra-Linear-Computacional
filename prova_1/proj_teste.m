#Testando a função de projeção ortogonal

clc
clear all
more off

v1 = [2 -1 0 4]';

v2 = [-2 3 0 -2];

w = [1 2 3 2]';

z=proj_ortogonal(v1,w);