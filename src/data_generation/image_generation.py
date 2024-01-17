import numpy as np
import matplotlib.pyplot as plt
import random
import sys
from tqdm import tqdm
import csv
from processors_pic_constants import *
#path Datasets

try:
    chip = sys.argv[1]
    numberImages = int(sys.argv[2])
except:
    chip = '12f1840'
    numberImages = 1

    
root = chip + '/datasets/training/'
size_Image = (1000,189) 

# Looping through the number of images we need
for m in tqdm(range(numberImages)):

    # initialisation image
    image = []

    for x in range(size_Image[0]):
        # generate a random opcode
        opcode = random.randint(1,vector_list[0])
        config = instru_dict[opcode]
        # opcode_Vector = np.zeros(vector_list[0],dtype=int)
        opcode_Vector = [0 for _ in range(vector_list[0])]
        opcode_Vector[opcode-1] = 1

        temp = opcode_Vector.copy()
        
        for i in range(1,len(config)):

            if config[i] == 1:
                encode = random.randint(1,vector_list[i])
                # encode_Vector = np.zeros(vector_list[i],dtype=int)
                encode_Vector = [0 for _ in range(vector_list[i])]
                encode_Vector[encode-1] = 1

                for entry in encode_Vector:
                    temp.append(entry)

            elif config[i] == 0:
                # encode_Vector = np.zeros(vector_list[i],dtype=int)
                encode_Vector = [0 for _ in range(vector_list[i])]
                for entry in encode_Vector:
                    temp.append(entry)


        image.append(temp)

    fileName = root + '2_UN_' + str(m) + '.csv'
    with open(fileName,"w+") as my_csv:
        csvWriter = csv.writer(my_csv,delimiter=',')
        csvWriter.writerows(image)

    