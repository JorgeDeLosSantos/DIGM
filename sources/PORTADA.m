clear all;clc
[x,y]=meshgrid(1:0.1:10);
z=cos(x)+sin(y)/(x+y)^1/2;
surf(z)
shading flat
% imagesc(W);
% saveas(gcf,'PORTADA.tif');