import random
import os

a = str(random.randint(0,50))
b = str(random.randint(0,50))
c = '0'

for i in range(random.randint(2,10)):
    tempa = str(random.randint(0,50))
    tempb = str(random.randint(0,50))

    a += ','
    a += str(tempa)
    
    b += ','
    b += str(tempb)

    c += ',0'


with open('12f1840/datasets/cfiles/swaparr.c',"w+") as file:

    file.write("#include<stdio.h>\n")
    file.write("void main() {\n")


    file.write("int a["+ str(len(a)) + "] = {" + a + "};\n")
    file.write("int b["+ str(len(b)) + "] = {" + b + "};\n")
    file.write("int c["+ str(len(c)) + "] = {" + c + "};\n")

    file.write("for (int i=0;i<" + str(len(a)) + ";i++) {\n") 

    file.write("c[i]=a[i];\n")
    file.write("a[i]=b[i];\n")
    file.write("b[i]=c[i]; } }\n")
    
		
		
    


