clc; clear; close all;
pkg load io;
##A = xlsread('bandstopSignal_10,15,20kHz.xlsx');
A = xlsread('bandstopSignal_10,15,20kHz.xlsx');
%tamanho de la matriz
[l w] = size(A);
i = 0;
j = 1;
%muestro de 400kHz
b = 2.5*10^-6;
r = b;
res = [0.00000000 0.0000000];
a=0;
%muestreo de Nyquist
while a < 0.1
  i = i+1;
  a = A(i,1);
  if(a>=b)
    r1 = abs(A(i,1)-b);
    r2 = abs(A(i-1,1)-b);
    j = j+1;
    if r1>r2
      res(j,:) = A(i-1,:);
    else
      res(j,:) = A(i,:);
    endif
    b = j*(2.5*10^-6);
  endif
endwhile
%plot sin filtro
subplot(2,1,1);
plot(res(:,1),res(:,2));
axis ([0 r *5000]);
%tamanho de Res
[l w]=size(res);
res2 = [];
%FILTRO
wind = 31; %Ventana para aplicar el filtro
for i= 1:l-wind
  res2(i,:) = [res(i,1),sum(res(i:i+wind,2))/wind];
endfor
%plot con filtro
subplot(2,1,2);
plot(res2(:,1),res2(:,2));
axis ([0 r *5000]);