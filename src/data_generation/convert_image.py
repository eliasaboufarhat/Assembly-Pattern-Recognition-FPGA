from dis import Instruction
import sys
import os
import numpy as np
from processors_pic_constants import *


# ----------------------------------------|| Convert to Image ||----------------------------------------
def convertImage(processor, file):
    """Function to convert the assembly code to an image using one hot vectors for data training of the conv neural network

    Args:
        processor (string): processor name
        file (string): path and file name to convert to image

    Returns:
        numpy 2D matrix: 2D array representing the image of the assembly code
    """

    try:
        file_open = open(file + '.asm', 'rt')
        print("File processor and disassembly  has been open suceesfully")

    except FileNotFoundError:
        print("File processor or disassembly not found")
        sys.exit(2)

    size_image = (1000, 189)
    padding = [0 for _ in range(189)]
    # Store the lines into an array and close the file
    all_lines = file_open.read()
    array_lines = all_lines.splitlines()
    file_open.close()

    # Initialisation of arrays of instruction
    image = []
    array_instructions = []
    for i in range(size_image[0]):
        # for line in array_lines:

        if i >= len(array_lines):
            line_image = padding.copy()

        else:
            line_image = []

            # Reading the lines with formatting to remove unwanted substrings or entries in the array 
            temp1 = array_lines[i].split(' ')
            # Removing any unwanted spaces
            temp2 = [i for i in temp1 if i != '']
            # Removing instructions address as we do not need it for the conversion to an image 
            temp3 = [temp2[i] for i in range(len(temp2)) if i != 0 and i != 1]

            # Removing any available commas in the assembly file
            for i in range(len(temp3)):
                if ',' in temp3[i]:
                    temp3[i] = temp3[i].replace(',', '')

            array_instructions.append(temp3)

            instruction = temp3[0].upper()
            key_instruc = instruEncode_dict[instruction]

            # Creating one hot vector for the opcode    
            opcode = np.zeros(vector_list[0], dtype=int)
            opcode[key_instruc - 1] = 1

            # line_image = opcode

            counter = 1
            f = np.zeros(vector_list[1], dtype=int)
            d = np.zeros(vector_list[2], dtype=int)
            b = np.zeros(vector_list[3], dtype=int)

            # Creating onhot vector for the f if it is available for this instruction
            if instru_dict[key_instruc][1] == 1:
                f[int(temp3[counter], 0)] = 1
                counter += 1

            # Creating onhot vector for the d if it is available for this instruction
            if instru_dict[key_instruc][2] == 1:
                if int(temp3[counter], 0) == 0:
                    d = [0, 1]
                else:
                    d = [1, 0]
                counter += 1

            # Creating onhot vector for the b if it is available for this instruction
            if instru_dict[key_instruc][3] == 1:
                b[int(temp3[counter], 0)] = 1
                counter += 1

            # Joining the vectors
            # line_image = np.append(opcode,f,d,b)
            for bits in opcode:
                line_image.append(bits)

            for bits in f:
                line_image.append(bits)

            for bits in d:
                line_image.append(bits)

            for bits in b:
                line_image.append(bits)

        image.append(line_image)

    return np.array(image)
