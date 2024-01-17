import os

import numpy as np
import pandas as pd
from tqdm import tqdm


class Codegraphs():
    """

    Classification Output Representation:

    "ULP represented in data set by 1 in the beginning" |--> " Loop exists and is non parallelizable"
    "LP represented in data set by 0" |-->  "Loop exists and is parallelizable"
    "UN represented by 2 in dataset" |--> "No Loop exists"
    """

    def __init__(self):
        self.path_training = '../../datasets/training'
        self.path_testing = '../../datasets/testing'
        self.counting = {'LP': 0, 'ULP': 0, 'UN': 0}
        self.labels = {'LP': np.array([1, 0, 0]), 'ULP': np.array([0, 1, 0]), 'UN': np.array([0, 0, 1])}
        self.training_data = []

    def training_data_generation(self):

        for file in tqdm(os.listdir(self.path_training)):

            # ------------|| Training Data ||------------
            if 'csv' in file:
                path_file = os.path.join(self.path_training, file)
                data = pd.read_csv(path_file).values.astype(int)

                # ------------|| Classification Output ||------------
                output = -1

                if file[0] == '0':
                    output = self.labels['LP']
                    self.counting['LP'] += 1

                if file[0] == '1':
                    output = self.labels['ULP']
                    self.counting['ULP'] += 1

                if file[0] == '2':
                    " No Loop exists"
                    output = self.labels['UN']
                    self.counting['UN'] += 1

                self.training_data.append([data, output])

        # Print balances to show that the data set is balanced
        print(self.counting)

        # Shuffle and save training data
        np.random.shuffle(self.training_data)
        np.save("training_data.npy", self.training_data)

        return self.training_data

    def clean_data(self):
        """
        Function to test the data
        """
        for file in tqdm(os.listdir(self.path_training)):
            if 'csv' in file:
                path_file = os.path.join(self.path_training, file)
                data = pd.read_csv(path_file).values.astype(int)
                if data.shape[0] != 999 or data.shape[1] != 189:
                    print(f"\n {path_file} is a mistake \n")
                    os.remove(path_file)

        return