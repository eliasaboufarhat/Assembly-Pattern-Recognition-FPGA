import random
import os

size = random.randint(2,600)
i = random.randint(2,size)

with open('12f1840/datasets/cfiles/fibonaci.c',"w+") as file:

    file.write("#include<stdio.h>\n")
    file.write("#include <stdlib.h>\n")
    file.write("int main() {\n")
    file.write("int n1=0,n2=1,n3,i,number = " + str(size) + ";\n")
    file.write("int *arr[];\n") 
    file.write("arr[0] = n1;\n")
    file.write("arr[1] = n2;\n")

    file.write("for(i="+ str(i) + ";i<number;++i) {\n")
    file.write("n3=n1+n2;\n")
    file.write("n1=n2; \n")
    file.write("n2=n3;\n")
    file.write("arr[i] = n3;\n")
    file.write("}\n")
    file.write("return 0;\n}")


