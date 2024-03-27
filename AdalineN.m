clc;
clear;
close all;
load data.mat
 data_train = load('mnist_train.csv');
x = data_train(:,2:end);
dp = data_train(:,1);
dp = lableconversion(dp,10);
 %data_test = load('mnist_test.csv');
%x = data_test(:,2:end);
%dp = data_test(:,1);
%dp = lableconversion(dp,10);
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
z1 = x*w1 + b1;
a1 = sigmoid(z1);
z2 = a1*w2 + b2;
grad1=(dp-z2)*w2'.*sigmoid_d(z1);
w1 = w1 + eta * x'*grad1;
b1 = b1 + eta * sum(grad1);
w2 = w2 + eta*a1'*z2;
b2 = b2 + eta*sum(z2);
loss = (dp-z2).^2/2;
errors(end+1) = mean(sum(loss));
disp( mean(sum(loss)))
end
plot(errors , 'linewidth' ,2 )
title('test error for adalineN ')