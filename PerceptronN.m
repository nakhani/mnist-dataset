clc; clear;
close all;
load data.mat
 data_train = load('mnist_train.csv');
x = data_train(:,2:end);
dp = data_train(:,1);
dp = lableconversion(dp,10) ;
 data_test = load('mnist_test.csv');
x_test = data_test(:,2:end);
dp_test = data_test(:,1);
dp_test = lableconversion(dp_test,10);
input_layer = length(x(1,:));
output = length(dp(1,:));
N = 100;
w1 = randn(input_layer,N);
b1 = randn(1,N);
w2 = zeros(N,output);
b2 = zeros(1,output);
iteration = 10;
eta = 0.001;
errors = [];
for i=1:iteration
error = 0;
for j=1:length(x)
z1 = x(j,:)*w1 + b1;
a1 = sigmoid(z1);
z2 = a1*w2 + b2;
a2 = (z2>=0)*2-1;
loss = (dp(j,:)-a2).^2;
grad1=(dp(j,:)-a2)*w2'.*sigmoid_d(z1);
w1 = w1 + eta * x(j,:)'*grad1;
b1 = b1 + eta * grad1;
w2 = w2 + eta*a1' *loss;
b2 = b2 + eta*loss;
error =error + sum(loss);
end
errors(end+1) = mean(error);
disp(error)
end
plot(errors , 'linewidth' ,2 )
title('Train error for perceptronN ')