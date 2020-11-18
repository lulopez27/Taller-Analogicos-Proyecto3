clc; clear; close all;
pkg load io;
A = xlsread('bandstopSignal.xlsx');
[l w] = size(A);
i = 0;
j = 1;
b = 2.5*10^-6;
res = [0.00000000 0.0000000];
a=0;
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
plot(res(1:100,1),res(1:100,2));
[l w]=size(res)
res2 = [];
for i= 1:l-4
  res2(i) = res(i:i+5,1)/5;
endfor