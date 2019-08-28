C1 = [
2 -2 1
-2 5 0
1 0 8
];

[d e] = Tri(C1);

[a b] = intervalo(d,e);

lambda = sturm(a,b,d,e)
