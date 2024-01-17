import os
import sys
from tqdm import tqdm

import numpy as np
import matplotlib.pyplot as plt

from sklearn.utils import shuffle
from sklearn.model_selection import train_test_split

import torch as torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim

from data import Codegraphs
from model import CNN

# ----------------------------------------|| Infrastructure ||----------------------------------------
train = None

# ----|| Loading a Model ||----
# model = torch.load(PATH)
# model.eval()

if torch.cuda.is_available():
    device = torch.device("cuda:0")
    print("Running on the GPU")
else:
    device = torch.device("cpu")
    print("Running on the CPU")

if train == None:
    train = True

# ----------------------------------------|| Data ||----------------------------------------
if "training_data.npy" not in os.listdir(os.getcwd()):
    print("\n Data do not exists \n")
    data_class = Codegraphs()
    data_class.clean_data()
    data_cnn = data_class.training_data_generation()
else:
    print("\n Data already exists \n")
    data_cnn = np.load("training_data.npy", allow_pickle=True)

# Storing the shape
rows_in_shape = data_cnn[0][0].shape[0]
columns_in_shape = data_cnn[0][0].shape[1]
out_shape = len(data_cnn[0][1])

print("\n\n________________________________________________________________________________________________ \n ")
print("Length of all data: " + str(len(data_cnn)) + " \n")
print("Shape of the data: " + str([rows_in_shape, columns_in_shape]) + " \n")
print("Shape of the output: " + str(out_shape) + " \n")
print("\n\n________________________________________________________________________________________________ \n ")

# Splitting the data into training and validation
training_data_cnn, testing_data_cnn = train_test_split(data_cnn, test_size=0.25, random_state=42)

print("\n\n________________________________________________________________________________________________ \n ")
print("Length of training data: " + str(len(training_data_cnn)) + " \n")
print("Length of testing data: " + str(len(testing_data_cnn)) + " \n")
print("\n\n________________________________________________________________________________________________ \n ")

# Converting numpy array to tensor for input of conv neural network
X_training = torch.Tensor([entry[0] for entry in training_data_cnn]).view(-1, rows_in_shape, columns_in_shape)
Y_training = torch.Tensor([entry[1] for entry in training_data_cnn])

# X_training,Y_training = shuffle(X_training,Y_training)
X_testing = torch.Tensor([entry[0] for entry in testing_data_cnn]).view(-1, rows_in_shape, columns_in_shape)
Y_testing = torch.Tensor([entry[1] for entry in testing_data_cnn])
# X_testing,Y_testing = shuffle(X_testing,Y_testing)


batch_size = 25
epochs = 100
# ----------------------------------------|| Train ||-------------------------------------------

# Defining the model
cnn = CNN().to(device)
print("\n\n________________________________________________________________________________________________ \n ")
print(cnn)
print("\n\n________________________________________________________________________________________________ \n ")

# Training Loss graph
training_loss = []

# Define the optimizer and the loss function to train the model
optimizer = optim.Adam(cnn.parameters(), lr=0.001)
lossCriteria = nn.MSELoss()

# -------------|| Training ||-------------
if train:
    for i in tqdm(range(epochs)):
        for j in range(0, len(X_training), batch_size):
            # Batches of images
            batchX = X_training[j:j + batch_size].view([-1, 1, rows_in_shape, columns_in_shape]).to(device)
            batchY = Y_training[j:j + batch_size].to(device)

            cnn.zero_grad()
            prediction_CNN = cnn(batchX)
            loss_prediction = lossCriteria(prediction_CNN, batchY)
            training_loss.append(loss_prediction)
            loss_prediction.backward()
            optimizer.step()

validation_dict = {'correct': 0, 'wrong': 0, 'total': 0}

X_testing, Y_testing = X_testing.to(device), Y_testing.to(device)

# -------------|| Validation ||-------------
if train == True:
    with torch.no_grad():
        for i in tqdm(range(len(X_testing))):

            outCNN = cnn(X_testing[i].view([-1, 1, rows_in_shape, columns_in_shape]).to(device))

            prediction = torch.argmax(outCNN[0])
            correctLabel = torch.argmax(Y_testing[i]).to(device)

            if prediction == correctLabel:
                validation_dict["correct"] += 1
            else:
                validation_dict["wrong"] += 1

            validation_dict["total"] += 1

# -------------|| Stats of Model Performance ||-------------
accuracy = validation_dict["correct"] / validation_dict["total"]

print("\n\n________________________________________________________________________________________________ \n ")
print('\n Validation: \n')
print('\n Correct Prediction:' + str(validation_dict["correct"]) + '\n')
print('\n Wrong Prediction:' + str(validation_dict["wrong"]) + '\n')
print('\n Total Prediction:' + str(validation_dict["total"]) + '\n')
print('\n Accuracy:' + str(round(accuracy, 3)) + '\n')
print("\n\n________________________________________________________________________________________________ \n ")

# Training Loss Graph
plt.plot([z for z in range(epochs)], training_loss)

torch.save(cnn, 'model.pt')


