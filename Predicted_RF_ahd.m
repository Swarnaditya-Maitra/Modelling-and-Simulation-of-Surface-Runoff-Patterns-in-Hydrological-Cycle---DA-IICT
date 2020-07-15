clearvars; clc;

load('RF_kdm_pred.mat');

figure(1);
xlim([0 103]);
plot(1 : size(RF_kdm_pred,1),RF_kdm_pred(:,1),'linewidth',2);
xlabel('Days'); ylabel('Rainfall (mm)');




