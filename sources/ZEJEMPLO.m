close all;clear all;clc

% Ejemplo de msgbox con ícono personalizado
% hmb = msgbox('Mensaje mostrado al usuario','Título',...
%              'custom',imread('imagen.png'));
A=imread('imagen.png');

for i=1:size(A,1)
    for j=1:size(A,2)
        B(i,j)=(A(i,j,1)+A(i,j,1)+A(i,j,3))/6;
    end
end

subplot(2,1,1);
imshow(rgb2gray(A));
subplot(2,1,2);
imshow(B);