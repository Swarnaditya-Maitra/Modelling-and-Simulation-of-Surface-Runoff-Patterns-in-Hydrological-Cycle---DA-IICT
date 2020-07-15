clearvars;
clc;

load('RUNOFF_kdm_pred.mat');

%1 : Cafe (outer only) = 74
%2 : Open Lawn = 67.5
%3 : Road = 98
%4 : Pavement = 89 
%5 : Shrubbery = 58
%6 : Impervious = 98

area = [0 0 0.04 0 1.04 0.21];


figure(1);
subplot(1,3,1);
xlim([1 size(RUNOFF_kdm_pred,1)]);
plot(1:size(RUNOFF_kdm_pred,1),RUNOFF_kdm_pred(:,4)*area(3),'linewidth',2); hold on;
xlabel('Days'); ylabel('Runoff Volume (Acre-Inches)'); legend('Road');

subplot(1,3,2);
xlim([1 size(RUNOFF_kdm_pred,1)]);
plot(1:size(RUNOFF_kdm_pred,1),RUNOFF_kdm_pred(:,6)*area(5),'linewidth',2); hold on;
xlabel('Days'); ylabel('Runoff Volume (Acre-Inches)'); legend('Shrubbery');

subplot(1,3,3); 
xlim([1 size(RUNOFF_kdm_pred,1)]);
plot(1:size(RUNOFF_kdm_pred,1),RUNOFF_kdm_pred(:,7)*area(6),'linewidth',2); hold on;
xlabel('Days'); ylabel('Runoff Volume (Acre-Inches)'); legend('Impervious');