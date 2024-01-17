import pandas as pd
import torch as torch
import matplotlib.pyplot as plt

if __name__ == '__main__':

    # ----------------------------------------|| Initialisation ||----------------------------------------
    data = pd.read_csv("DataSets/testing/test_LP.csv").values.astype(int)
    data1 = pd.read_csv("DataSets/testing/test_ULP.csv").values.astype(int)
    data2 = pd.read_csv("DataSets/testing/test_UN.csv").values.astype(int)

    data_test =  pd.read_csv("DataSets/testing/convolution.csv").values.astype(int)
    data_test_1 =  pd.read_csv("DataSets/testing/sigmoid.csv").values.astype(int)


    # ----------------------------------------|| Model Loading ||----------------------------------------
    cnn = torch.load("model1.pt",map_location=torch.device('cpu'))
    cnn.eval()

    rows_in_shape = data1.shape[0]
    columns_in_shape = data1.shape[1]

    X = torch.Tensor(data).view(-1, rows_in_shape, columns_in_shape)
    X1 = torch.Tensor(data1).view(-1, rows_in_shape, columns_in_shape)
    X2 = torch.Tensor(data2).view(-1, rows_in_shape, columns_in_shape)

    X_test = torch.Tensor(data_test).view(-1, rows_in_shape, columns_in_shape)
    X_test_1 = torch.Tensor(data_test).view(-1, rows_in_shape, columns_in_shape)

    plt.imshow(X_test.T, cmap='gray')
    plt.xlabel('time (s)')
    plt.ylabel('Vectors (Opcode, f, d, b)')
    plt.title('Assembly matrix represented as an Image')
    plt.show()

    print("\n")
    cnn.zero_grad()
    out_cnn = cnn(X.view([-1, 1, rows_in_shape, columns_in_shape]))
    print(out_cnn[0])
    prediction = torch.argmax(out_cnn[0])
    print(prediction)
    print("\n")

    cnn.zero_grad()
    out_cnn = cnn(X1.view([-1, 1, rows_in_shape, columns_in_shape]))
    print(out_cnn[0])
    prediction = torch.argmax(out_cnn[0])
    print(prediction)
    print("\n")


    cnn.zero_grad()
    out_cnn = cnn(X2.view([-1, 1, rows_in_shape, columns_in_shape]))
    print(out_cnn[0])
    prediction = torch.argmax(out_cnn[0])
    print(prediction)
    print("\n")

    cnn.zero_grad()
    out_cnn = cnn(X_test.view([-1, 1, rows_in_shape, columns_in_shape]))
    print(out_cnn[0])
    prediction = torch.argmax(out_cnn[0])
    print(prediction)
    print("\n")

    cnn.zero_grad()
    out_cnn = cnn(X_test_1.view([-1, 1, rows_in_shape, columns_in_shape]))
    prediction = torch.argmax(out_cnn[0])
    print(out_cnn[0])
    print(prediction)