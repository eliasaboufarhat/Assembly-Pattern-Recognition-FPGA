from tqdm import tqdm
import matplotlib.pyplot as plt
import os 
import shutil
from convert_image import convertImage
import csv
import pandas as pd

# chip = '12f1840'
# app = '12f1840/testing/sigmoid'
# image = convertImage(chip,app)
# plt.imshow(image.T, cmap='gray')
# plt.show()


# fileName = 'sigmoid.csv'

# with open(fileName,"w+") as my_csv:
#     csvWriter = csv.writer(my_csv,delimiter=',')
#     csvWriter.writerows(image)


image = pd.read_csv("12f1840/datasets/training/convolution.csv").values.astype(int)
plt.imshow(image.T, cmap='binary')
plt.xlabel('time (s)')
plt.ylabel('Vectors (Opcode, f, d, b)')
plt.title('Assembly matrix represented as an Image')
plt.show()