########################################################################################################################
# Name: Elias Abou Farhat
# Date: 21/02/2022
# Summary:  This algorithm is responsible to generate data
# Explications (PseudoCode)
# 1. For each classification and for each appliction of this classification
# 2. For random numbers
# 3. Compile using XC8 compiler with a chip of PIC12f1840
# 4. Disassemble the .hex file created using disasm c code 
# 5. Convert the file into an image using one hot vectors
# 6. Store the image with the classification created
########################################################################################################################

from tqdm import tqdm
import matplotlib.pyplot as plt
import os 
import shutil
from convert_image import convertImage
import csv

classifications = ['LP','ULP']


applications = {
    'LP' : ['fibonaci','binom','deparr'], 
    'ULP': ['firfilter','swaparr','addarr'],
}

testing = 0

# Reporting results
fileResults = open("Reports/results.txt", "w+")
fileErrors = open("Reports/errors.txt", "w+")

sucess_LP = 0
failure_LP = 0
sucess_ULP = 0
failure_ULP = 0
number_total = 0

numberImagesPerApplication = 1
chip = '12f1840'

for classi in tqdm(classifications): # Looping through classifications
    for app in tqdm(applications[classi]): # Looping through application of these classification
        i = 0
        # for i in tqdm(range(numberImagesPerApplication)): # Creating these number of image per application
        while i < numberImagesPerApplication:
            number_total += 1
            try:
                print("############################################################")
                print(os.getcwd())
                print("############################################################")
                os.system('python3 cGen/' + app + '_gen.py') 
                os.chdir(chip)
                os.system('mkdir temp')
                os.chdir('temp')
                os.system('xc8 --chip=' + chip + ' ../datasets/cfiles/' + app + '.c') #XC8 compiler produce multiple filess
                os.chdir('../code')

                if os.path.exists('temp/' + app + '.hex') == False:
                    os.chdir('../code')
                    i -= 1
                    continue

                os.system('gpdasm -p p' + chip + ' -c temp/' + app + '.hex > ' + app + '.asm') # Converting the .hex file to .asm file using a disassembly program
                shutil.rmtree('temp')
                image = convertImage(chip,app)
                # plt.imshow(image.T, cmap='gray')
                # plt.show()

                os.remove(app + '.asm')

                if classi == 'LP':
                    initial = 0
                elif classi == 'ULP':
                    initial = 1
                else:
                    initial = 2

                fileName = 'datasets/training/' + str(initial) + '_'  + str(classi) + '_' + str(app) + '_' + str(i) +'.csv'

                with open(fileName,"w+") as my_csv:
                    csvWriter = csv.writer(my_csv,delimiter=',')
                    csvWriter.writerows(image)

                os.chdir('../code')

                if classi == 'LP':
                    sucess_LP += 1
                elif classi == 'ULP':
                    sucess_ULP += 1

            except Exception as e:
                os.chdir('../code')
                if classi == 'LP':
                    failure_LP += 1
                if classi == 'ULP':
                    failure_ULP += 1

                if testing == 1:
                    fileErrors.write("\n ###########################################################################")
                    fileErrors.write("Error happened in class %s and in applifation %s the try number %i \n"%(classi,app,i))
                    fileErrors.write(e)
                    fileErrors.write(" ########################################################################### \n ")

            i += 1
                

os.system('python3 image_generation.py ' + str(chip) + ' ' + str(numberImagesPerApplication*3))

sucess_total = sucess_LP + sucess_ULP + numberImagesPerApplication
failure_total = failure_LP + failure_ULP
number_total += numberImagesPerApplication


if testing == 1:
    fileResults.write("\t \t \t \t \t Report: \n \n \n")
    fileResults.write("Number of total try of data creation: %i \n"%number_total)
    fileResults.write("Number of total successes: %i \n"%sucess_total)
    fileResults.write("Number of total failures: %i \n"%failure_total)
    fileResults.write("Number of total LP successes: %i \n"%sucess_LP)
    fileResults.write("Number of total ULP successes: %i \n"%sucess_ULP)
    fileResults.write("Number of total LP failures: %i \n"%failure_LP)
    fileResults.write("Number of total ULP failures: %i \n"%failure_ULP)




    