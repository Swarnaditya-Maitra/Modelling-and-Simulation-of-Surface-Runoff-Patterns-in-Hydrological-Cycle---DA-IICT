clc; clear all;
filename = 'final_kdm.csv';
M = csvread(filename,1, 0,[1, 0, 758, 1]);

X = [1:758];
Y = M(:,2);
Z = (Y>0);
plot(X,Y);
xlim([1 758]);
tot=sum(Z);
avg=sum(Y)/tot;