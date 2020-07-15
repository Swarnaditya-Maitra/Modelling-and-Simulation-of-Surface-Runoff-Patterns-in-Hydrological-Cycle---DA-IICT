clc; clear all;

DAILY_RAINFALL_Ahmedabad = zeros(10*122, 2);
FREQ_Ahmedabad = zeros(10*122,1);
date = 6012009;

DAILY_RAINFALL_Ahmedabad(1:30, 1) = 06012009 : 10000 : 06302009;
DAILY_RAINFALL_Ahmedabad(31:61, 1) = 07012009 : 10000 : 07312009;
DAILY_RAINFALL_Ahmedabad(62:92, 1) = 08012009 : 10000 : 08312009;
DAILY_RAINFALL_Ahmedabad(93:122, 1) = 09012009 : 10000 : 09302009;

%2009
for i = 1 : 9
    j = 122*i;
    DAILY_RAINFALL_Ahmedabad(j+1:j+30, 1) = DAILY_RAINFALL_Ahmedabad(1:30, 1) + i;
    DAILY_RAINFALL_Ahmedabad(j+31:j+61, 1) = DAILY_RAINFALL_Ahmedabad(31:61, 1) + i;
    DAILY_RAINFALL_Ahmedabad(j+62:j+92, 1) = DAILY_RAINFALL_Ahmedabad(62:92, 1) + i;
    DAILY_RAINFALL_Ahmedabad(j+93:j+122, 1) = DAILY_RAINFALL_Ahmedabad(93:122, 1) + i;
end

INDEX = containers.Map(DAILY_RAINFALL_Ahmedabad(:,1),[1:1220]);

filename = 'GUJARAT_Sanand.csv';

%%%%%%%%%%%%%%%%%%%%%%2009%%%%%%%%%%%%%%%%%%%%%%%%
%M = csvread(filename, 3023, 7,[3023, 7, 5713, 13]);

% for i = 1:size(M,1)
%     
%     index = INDEX(M(i,1));
%     DAILY_RAINFALL_Ahmedabad(index,2) = DAILY_RAINFALL_Ahmedabad(index,2) + M(i,7);
%     FREQ_Ahmedabad(index,1) = FREQ_Ahmedabad(index,1) + 1;
%     
% end


%%%%%%%%%%%%%%%%%%%%%%2010%%%%%%%%%%%%%%%%%%%%%%%%
M = csvread(filename, 2212, 7,[2212, 7, 4187, 13]);

for i = 1:size(M,1)
    
    index = INDEX(M(i,1));
    DAILY_RAINFALL_Ahmedabad(index,2) = DAILY_RAINFALL_Ahmedabad(index,2) + M(i,7);
    FREQ_Ahmedabad(index,1) = FREQ_Ahmedabad(index,1) + 1;
    
end


%%%%%%%%%%%%%%%%%%%%%%2011%%%%%%%%%%%%%%%%%%%%%%%%
M = csvread(filename, 9594, 7,[9594, 7, 12428, 13]);

for i = 1:size(M,1)
    
    index = INDEX(M(i,1));
    DAILY_RAINFALL_Ahmedabad(index,2) = DAILY_RAINFALL_Ahmedabad(index,2) + M(i,7);
    FREQ_Ahmedabad(index,1) = FREQ_Ahmedabad(index,1) + 1;
    
end


%%%%%%%%%%%%%%%%%%%%%%2012%%%%%%%%%%%%%%%%%%%%%%%%
M = csvread(filename, 18169, 7,[18169, 7, 19865, 13]);

for i = 1:size(M,1)
    
    index = INDEX(M(i,1));
    DAILY_RAINFALL_Ahmedabad(index,2) = DAILY_RAINFALL_Ahmedabad(index,2) + M(i,7);
    FREQ_Ahmedabad(index,1) = FREQ_Ahmedabad(index,1) + 1;
    
end


%%%%%%%%%%%%%%%%%%%%%%2013%%%%%%%%%%%%%%%%%%%%%%%%
M = csvread(filename, 21907, 7,[21907, 7, 22156, 13]);

for i = 1:size(M,1)
    
    index = INDEX(M(i,1));
    DAILY_RAINFALL_Ahmedabad(index,2) = DAILY_RAINFALL_Ahmedabad(index,2) + M(i,7);
    FREQ_Ahmedabad(index,1) = FREQ_Ahmedabad(index,1) + 1;
    
end


%%%%%%%%%%%%%%%%%%%%%%2014%%%%%%%%%%%%%%%%%%%%%%%%
M = csvread(filename, 23661, 7,[23661, 7, 26574, 13]);

for i = 1:size(M,1)
    
    index = INDEX(M(i,1));
    DAILY_RAINFALL_Ahmedabad(index,2) = DAILY_RAINFALL_Ahmedabad(index,2) + M(i,7);
    FREQ_Ahmedabad(index,1) = FREQ_Ahmedabad(index,1) + 1;
    
end


%%%%%%%%%%%%%%%%%%%%%%2015%%%%%%%%%%%%%%%%%%%%%%%%
M = csvread(filename, 32174, 7,[32174, 7, 35066, 13]);

for i = 1:size(M,1)
    
    index = INDEX(M(i,1));
    DAILY_RAINFALL_Ahmedabad(index,2) = DAILY_RAINFALL_Ahmedabad(index,2) + M(i,7);
    FREQ_Ahmedabad(index,1) = FREQ_Ahmedabad(index,1) + 1;
    
end


%%%%%%%%%%%%%%%%%%%%%%2016%%%%%%%%%%%%%%%%%%%%%%%%
M = csvread(filename, 40141, 7,[40141, 7, 43043, 13]);

for i = 1:size(M,1)
    
    index = INDEX(M(i,1));
    DAILY_RAINFALL_Ahmedabad(index,2) = DAILY_RAINFALL_Ahmedabad(index,2) + M(i,7);
    FREQ_Ahmedabad(index,1) = FREQ_Ahmedabad(index,1) + 1;
    
end


%%%%%%%%%%%%%%%%%%%%%%2017%%%%%%%%%%%%%%%%%%%%%%%%
M = csvread(filename, 48876, 7,[48876, 7, 51802, 13]);

for i = 1:size(M,1)
    
    index = INDEX(M(i,1));
    DAILY_RAINFALL_Ahmedabad(index,2) = DAILY_RAINFALL_Ahmedabad(index,2) + M(i,7);
    FREQ_Ahmedabad(index,1) = FREQ_Ahmedabad(index,1) + 1;
    
end


%%%%%%%%%%%%%%%%%%%%%%2018%%%%%%%%%%%%%%%%%%%%%%%%
M = csvread(filename, 57635, 7,[57635, 7, 60562, 13]);

for i = 1:size(M,1)
    
    index = INDEX(M(i,1));
    DAILY_RAINFALL_Ahmedabad(index,2) = DAILY_RAINFALL_Ahmedabad(index,2) + M(i,7);
    FREQ_Ahmedabad(index,1) = FREQ_Ahmedabad(index,1) + 1;
    
end
