function a= sigmoid_d(x)
a = sigmoid(x).*(1-sigmoid(x));
end