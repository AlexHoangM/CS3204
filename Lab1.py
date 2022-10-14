#size matrix = MatSize = n
#start from n = 2
#n = n + 1 after iteration

import random as rand
import time


def MatrixCreate(n: int):

    #create matrices of size nxn
    randMatA = []
    randMatB = []

    #determining size of rows of size n
    for i in range(n):
        rowA = []
        rowB = []

        #determining size of columns of size n
        for j in range (n):
            #assign random values to matrix A
            rowA.append(rand.randint(0, 99))

            #assign random values to matrix B
            rowB.append(rand.randint(0, 99))
        
        randMatA.append(rowA)
        randMatB.append(rowB)
    
    return randMatA, randMatB

def MatrixMultiplication(n: int):
    MatA, MatB = MatrixCreate(n)

    #create empty result matrix
    MatResult = []
    #iterate through rows of matrix A
    for i in range(len(MatA)):
        #new row in result matrix
        row = []
        #iterate through columns of matrix B
        for j in range(len(MatB[0])):
            #result as new elem in new new
            res = 0
            #iterate through rows of matrix B
            for k in range(len(MatA[i])):
                res +=  MatA[i][k] * MatB[k][j]
            row.append(res)
        MatResult.append(row)

    return MatResult   

def MatrixIteration(n: int):
    for i in range (2, n+1):
    #condition to start with n = 2
        if n < 2:
            return None
        start = time.time()
        resMat = MatrixMultiplication(i)
        end = time.time()
        elapsed = end - start

        print(f"n = {i} - {elapsed}")
        #print(elapsed)
    return resMat

print("For case: n = 30")
MatrixIteration(30)
print("For case: n = 50")
MatrixIteration(50)
print("For case: n = 80")
MatrixIteration(80)
print("For case: n = 100")
MatrixIteration(100)
print("For case: n = 150")
MatrixIteration(150)