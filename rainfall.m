clc; clear all;
filename = 'final_abd.csv';
M = csvread(filename,1, 0,[1, 0, 1027, 1]);

X = [1:1027];
Y = M(:,2);
Z = (Y>0);
plot(X,Y);
xlim([1 1027]);
tot=sum(Z);
avg=sum(Y)/tot;