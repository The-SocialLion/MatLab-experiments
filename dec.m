clc;
clear all;
close all;
x=input('enter length of sine signal');
M=input('enter down sampling factor');
n=0:x-1;
f=input('enter freq');
d=sin(2*pi*f*n);
y=decimate(d,M);
subplot(2,1,1);
stem(n,d(1:x));
subplot(2,1,2);
stem(n,y);