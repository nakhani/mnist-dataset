
clc;
clear;
close all;
load data.mat
 data_train = load('mnist_train.csv');
x = data_train(:,2:end);
dp = data_train(:,1);
dp = lableconversion(dp,10) *2 -1;
 %data_test = load('mnist_test.csv');
%x_test = data_test(:,2:end);
%dp_test = data_test(:,1);
dp_test = lableconversion(dp_test,10) *2 -1;
input_layer = length(x(1,:));
output = length(dp(1,:));
w = zeros(input_layer,output);
b = zeros(1,output);
iteration = 10;
eta = 0.001;
errors = [];
for i=1:iteration
error = 0;
for j=1:length(x)
y = x(j,:)*w + b;
y = (y>=0)*2-1;
e = (dp(j,:)- y);
error =error + sum(abs(e));
w = w + eta *e *x(j);
b = b + eta *e ;
end
errors(end+1) = mean(error);
disp(error)
end
plot(errors , 'linewidth' ,3 )
title('test error')