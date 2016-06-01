close all
clear
clc

Analysis = fopen('./Analysis.txt');
D = textscan(Analysis,'%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s');
fclose(Analysis);
value = [D{4},D{5},D{6},D{7},D{8},D{9},D{10},D{11},D{12},D{13},D{14}...
    D{15},D{16},D{17},D{18}];
prop = [D{1},D{2},D{3}];


%frequence of Nominal attribute?max,min,median,Q1,Q3 of Numerical attribute
freSeason = tabulate(D{1});
freSize = tabulate(D{2});
freSpeed = tabulate(D{3});
disp(freSeason)
disp(freSize)
disp(freSpeed)


for i = 1:15
  
    Value(:,i) = str2double(value(:,i));
    Max(i,1) = max(Value(:,i));
    Min(i,1) = min(Value(:,i));
    Mean(i,1) = mean(Value(:,i));
    Median(i,1) = median(Value(:,1));
    Q1(i,1) = prctile(Value(:,1),25);
    Q3 (i,1)= prctile(Value(:,1),75);
    
end

[ii,jj]= find(strcmp(value, 'XXXXXXX'));

%histgram of mxPH,qqplot 
figure(1)
hist(Value(:,1));
xlabel('mxPH')
ylabel('number')
figure(2)
qqplot(Value(:,1));
xlabel('mxPH')
ylabel('PH')

%boxplot of mxPH
figure(3)
boxplot(Value(:,1));
xlabel('mxPH')
ylabel('PH')

%boxplot of a1 consider size
ta=tabulate(prop(:,2));
for j = 1:length(ta)
    alll = find(strcmp(prop(:,2),ta{j,1}));
    
    
    
end
