import random
import os

a = str(random.randint(-12,12))
b = str(random.randint(-12,12))
c = '0'
totala = 0
totalb = 0

for i in range(random.randint(2,8)):
    tempa = random.randint(-12,12)
    tempb = random.randint(-12,12)
    totala += tempa
    totalb += tempb

    a += ','
    a += str(tempa)
    
    b += ','
    b += str(tempb)

    c += ',0'

test = totala - totalb

with open('12f1840/datasets/cfiles/deparr.c',"w+") as file:

    file.write("#include<stdio.h>\n")
    file.write("void main() {\n")


    file.write("int a["+ str(len(a)) + "] = {" + a + "};\n")
    file.write("int b["+ str(len(b)) + "] = {" + b + "};\n")
    file.write("int c["+ str(len(c)) + "] = {" + c + "};\n")

    file.write("for (int i=1;i<" + str(len(a)-1) + ";i++) {\n") 
    if test < 0:
        file.write("if (c[i-1] < 0) {\n") 
        file.write("c[i]=a[i] + b[i]; } \n")
        file.write("if (c[i-1] > 0) {\n") 
        file.write("c[i]=a[i] - b[i]; } \n")
    elif test == 0:
        file.write("if (c[i-1] < 0) {\n") 
        file.write("b[i]=a[i] + b[i]; } \n")
        file.write("if (c[i-1] > 0) {\n") 
        file.write("b[i]=a[i] - b[i]; } \n")
    else:
        file.write("if (c[i-1] < 0) {\n") 
        file.write("a[i]=a[i] + b[i]; } \n")
        file.write("if (c[i-1] > 0) {\n") 
        file.write("a[i]=a[i] - b[i]; } \n")
    
    file.write("} } \n")



		
		
    


