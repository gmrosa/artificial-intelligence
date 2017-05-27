clear all;clc; close all;

% load('Dados/data.mat');
% dataMat = data;
load('data_preg.mat');
data_pregMat = data;

x = data_pregMat(:,1);
y = data_pregMat(:,2);

hold on;
scatter (x, y);
# 1 vermelho
n = 1;
b = polyfit(x, y, n);
b0 = b(2);
b1 = b(1);
yt = (b0+b1*x);
plot(x, yt, "r");
# 2 verde
n = 2;
b = polyfit(x, y, n);
b0 = b(3);
b1 = b(2);
b2 = b(1);
yt = (b0+b1*x+b2*x.^2);
plot(x, yt, "g");
# 3 preto
n = 3;
b = polyfit(x, y, n);
b0 = b(4);
b1 = b(3);
b2 = b(2);
b3 = b(1);
yt = (b0+b1*x+b2*x.^2+b3*x.^3);
plot(x, yt, "k");
# 8 amarelo
n = 8;
b = polyfit(x, y, n);
b0 = b(8);
b1 = b(7);
b2 = b(6);
b3 = b(5);
b4 = b(4);
b5 = b(3);
b6 = b(2);
b7 = b(1);
yt = (b0+b1*x+b2*x.^2+b3*x.^3+b4*x.^4+b5*x.^5+b6*x.^6+b7*x.^7);
plot(x, yt, "y");
hold off;