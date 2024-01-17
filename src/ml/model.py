import torch as torch
import torch.nn as nn
import torch.nn.functional as F

# This is the final neural network
class CNN(nn.Module):

    def __init__(self):
        super(CNN, self).__init__()

        self.size_to_linear = None

        # --------------|| 3 Convolution Layers ||--------------
        self.conv1 = nn.Conv2d(1,16,3)
        self.conv2 = nn.Conv2d(16,32,3)
        self.conv3 = nn.Conv2d(32,64,3)

        self.max_pool = nn.MaxPool2d(2)

        x = torch.randn(999,189).view([-1,1,999,189])
        self.cnn(x)

        self.fc1 = nn.Linear(self.size_to_linear, 256)
        self.fc2 = nn.Linear(256,3)

    def cnn(self, x):

        x = self.max_pool(F.relu(self.conv1(x)))
        x = self.max_pool(F.relu(self.conv2(x)))
        x = self.max_pool(F.relu(self.conv3(x)))

        if self.size_to_linear == None:
            self.size_to_linear = x[0].shape[0] * x[0].shape[1] * x[0].shape[2]

        return x
        
    def forward(self,x):

        x = self.cnn(x)
        x = x.view(-1, self.size_to_linear)
        x = F.relu(self.fc1(x))
        x = self.fc2(x)
        x = F.softmax(x,dim=1)

        return x


