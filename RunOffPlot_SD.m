clearvars;
clc;

load('RUNOFF_sd_pred.mat');

%1 : Cafe (outer only) = 74
%2 : Open Lawn = 67.5
%3 : Road = 98
%4 : Pavement = 89 
%5 : Shrubbery = 58
%6 : Impervious = 98

area = [0.346 3.38 1.04 0.186 16.028 4.42];


figure(1);
subplot(2,3,1);
xlim([1 size(RUNOFF_sd_pred,1)]);
plot(1:size(RUNOFF_sd_pred,1),RUNOFF_sd_pred(:,2)*area(1),'linewidth',2); hold on;
xlabel('Days'); ylabel('Runoff Volume (Acre-Inches)'); legend('Cafe');

subplot(2,3,2);
xlim([1 size(RUNOFF_sd_pred,1)]);
plot(1:size(RUNOFF_sd_pred,1),RUNOFF_sd_pred(:,3)*area(2),'linewidth',2); hold on;
xlabel('Days'); ylabel('Runoff Volume (Acre-Inches)'); legend('Open Lawn');

subplot(2,3,3);
xlim([1 size(RUNOFF_sd_pred,1)]);
plot(1:size(RUNOFF_sd_pred,1),RUNOFF_sd_pred(:,4)*area(3),'linewidth',2); hold on;
xlabel('Days'); ylabel('Runoff Volume (Acre-Inches)'); legend('Road');

subplot(2,3,4); 
xlim([1 size(RUNOFF_sd_pred,1)]);
plot(1:size(RUNOFF_sd_pred,1),RUNOFF_sd_pred(:,5)*area(4),'linewidth',2); hold on;
xlabel('Days'); ylabel('Runoff Volume (Acre-Inches)'); legend('Pavement');

subplot(2,3,5); 
xlim([1 size(RUNOFF_sd_pred,1)]);
plot(1:size(RUNOFF_sd_pred,1),RUNOFF_sd_pred(:,6)*area(5),'linewidth',2); hold on;
xlabel('Days'); ylabel('Runoff Volume (Acre-Inches)');  legend('Shrubbery');

subplot(2,3,6); 
xlim([1 size(RUNOFF_sd_pred,1)]);
plot(1:size(RUNOFF_sd_pred,1),RUNOFF_sd_pred(:,7)*area(6),'linewidth',2);
xlabel('Days'); ylabel('Runoff Volume (Acre-Inches)'); legend('Impervious');