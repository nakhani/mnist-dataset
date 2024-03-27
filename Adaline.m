
clc;
clear;
close all;
load data.mat
 data_train = load('mnist_train.csv');
x = (data_train(:,2:end)>0);
dp = data_train(:,1);
dp = lableconversion(dp,10) ;
input_layer = length(x(1,:));
output = length(dp(1,:));
w = zeros(input_layer,output);
b = zeros(1,output);
iteration = 10;
eta = 0.00001;
errors = [];
for i=1:iteration
y = x*w + b;
d = (dp-y);
w = w + eta*x'*d;
b = b + eta*mean(d);
error =d.^2/2;
errors(end+1) = sum(mean(error));
disp(sum(mean(error)))
end
plot(errors , 'linewidth' ,2)
title('train error')