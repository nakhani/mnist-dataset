function y = lableconversion(x,num_class)
y = zeros(length(x),num_class);
for i = 1: length(x)
y(i,x(i)+1)=1;
end
end