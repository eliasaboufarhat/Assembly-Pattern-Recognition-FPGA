import random
import os

size = random.randint(2,600)

h = str(random.randint(-5,5))
xv = '0'
for i in range(random.randint(3,9)):
    temp = random.randint(-5,5)
    h += ','
    h += str(temp)
    xv += ',0'

imp = str(random.randint(0,1))
for i in range(random.randint(5,25)):
    temp = random.randint(0,1)
    imp += ','
    imp += str(temp)


with open('12f1840/datasets/cfiles/firfilter.c',"w+") as file:

    file.write("#include<stdio.h>\n")
    file.write("int example_fir_filter(int xn) {\n")
    file.write("static int h[" + str(len(h)) + "] = {" + h + "};\n")
    file.write("static int hg = " + str(random.randint(1,15)) + ";\n")
    file.write("static int xv[" + str(len(xv)) + "] = {" + xv + "};\n")
    file.write("int yn = 0;\n")

    for j in range(len(xv),1):
        file.write("xv[" + str(j) + "] = xv[" + str(j-1) + "];\n")

    file.write("xv[" + str(1) + "] = xn;\n")

    file.write("for(int i=0;i<" + str(len(h)) + ";i++) {\n")
    file.write("yn += h[i]*xv[i];}\n")

    file.write("yn = hg*yn;\n")
    file.write("return yn; }\n")
    file.write("void main() {\n")
    file.write("int y;\n")
    file.write("int imp[" + str(len(imp)) + "] = {" + imp + "};\n")
    file.write("for(int i=0;i<" + str(len(imp)) + ";i++) {\n")

    file.write("y = example_fir_filter(imp[i]); } }\n")
    


    




