import numpy as np
from numpy import array
from numpy.linalg import norm


B = np.array([[2., -1., 1., 5.], [1., -2., -3., 7.], [1., 4., -1., 2.], [3., 2., 8., 9.,]])

B# = np.array([[1., 1., 1., 0], [1., 1., 1., 1], [-2., -2., -2., -1]])

print("Comparando a matriz.\n")
print(B)

def escalonamento(matriz):
    (m,n) = matriz.shape
    for row in range(0,m):
        pivot = matriz[row,row]
        for col in range(row+1, m):
            mult = float(-matriz[col, row]/pivot)
            matriz[col,:] = matriz[col,:] + mult*matriz[row,:]

    return matriz   

    

print("Imprimindo Matriz.\n")
U = escalonamento(B)
print(U)


                            

