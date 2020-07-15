clc; clear all;
load('RF_kdm_pred.mat');

%1 : Cafe (outer only) = 74
%2 : Open Lawn = 67.5
%3 : Road = 98
%4 : Pavement = 89 
%5 : Shrubbery = 58
%6 : Impervious = 98

CN = [74 67.5 98 89 58 98];

S = 1000*(CN.^-1) - 10;        %retention factor
Ia = 0.2*S;                    %initial abstraction
RUNOFF = []; 

for i=1:size(RF_kdm_pred,1)
        
        rainfall = RF_kdm_pred(i,1)/25.4;
        
        %CN:1
        RF1 = (((rainfall - (0.2*S(1)))^2)*(rainfall > Ia(1)))/(rainfall + (0.8*S(1)));

        %CN:2
        RF2 = (((rainfall - (0.2*S(2)))^2)*(rainfall > Ia(2)))/(rainfall + (0.8*S(2)));
        
        %CN:3
        RF3 = (((rainfall - (0.2*S(3)))^2)*(rainfall > Ia(3)))/(rainfall + (0.8*S(3)));
        
        %CN:4
        RF4 = (((rainfall - (0.2*S(4)))^2)*(rainfall > Ia(4)))/(rainfall + (0.8*S(4)));
        
        %CN:5
        RF5 = (((rainfall - (0.2*S(5)))^2)*(rainfall > Ia(5)))/(rainfall + (0.8*S(5)));
        
        %CN:6
        RF6 = (((rainfall - (0.2*S(6)))^2)*(rainfall > Ia(6)))/(rainfall + (0.8*S(6)));
        
        RUNOFF = [ RUNOFF ; RF_kdm_pred(i,1) RF1 RF2 RF3 RF4 RF5 RF6 ]; 
    
    
end


figure(1);
%plot(1:size(RUNOFF,1),RUNOFF(:,2)); hold on;
% plot(1:size(RUNOFF,1),RUNOFF(:,3),'linewidth',3); hold on;
% plot(1:size(RUNOFF,1),RUNOFF(:,4),'linewidth',3); hold on;
% plot(1:size(RUNOFF,1),RUNOFF(:,5),'linewidth',3); hold on;
% plot(1:size(RUNOFF,1),RUNOFF(:,6),'linewidth',3); hold on;
% plot(1:size(RUNOFF,1),RUNOFF(:,7),'linewidth',3); 
xlim([1 size(RUNOFF,1)]);