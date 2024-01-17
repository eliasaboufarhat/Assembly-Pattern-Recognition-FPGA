import random
import os

size = random.randint(3,6)
n = random.randint(0,size)
k = random.randint(0,n)

with open('12f1840/datasets/cfiles/binom.c',"w+") as file:

    file.write("#include<stdio.h>\n")
    file.write("void main() {\n")
    file.write("int i, j, n, k,result, min, c[" + str(size) + "][" + str(size) + "]={0};\n")
    file.write("n = " + str(n) + " ;\n")
    file.write("k = " + str(k) + " ;\n")
    file.write("if(n >= k) {\n")
    file.write("for(i=0; i<=n; i++) {\n")
    file.write("min = i<k? i:k;\n")
    file.write("for(j = 0; j <= min; j++) {\n")
    file.write("if(j==0 || j == i) {\n")
    file.write("c[i][j] = 1;\n")
    file.write("} else {\n")
    file.write("c[i][j] = c[i-1][j-1] + c[i-1][j];\n")
    file.write("} } }\n")
    file.write("result = c[n][k];\n")
    file.write("} } \n")


