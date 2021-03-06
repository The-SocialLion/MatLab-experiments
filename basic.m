clc;
clear all;
close all;
a=-10:10;
b=[zeros(1,10) ones(1,11)];
subplot(3,2,1);
stem(a,b);
title('unit step');
xlabel('x label');
ylabel('y label');
a1=-10:10;
b1=[zeros(1,10) ones(1,1) zeros(1,10)];
subplot(3,2,2);
stem(a1,b1);
title('unit impulse');
xlabel('x label');
ylabel('y label');
a2=0:10;
b2=a2;
subplot(3,2,3);
stem(a2,b2);
title('unit ramp');
xlabel('x label');
ylabel('y label');
a3=0:0.0001:pi;
f=input('enter frequnecy');
b3=sin(2*pi*f*a3);
subplot(3,2,4);
plot(a3,b3);
title('sine');
xlabel('x label');
ylabel('y label');
a4=0:0.0001:pi;
f1=input('enter frequnecy');
b4=cos(2*pi*f1*a4);
subplot(3,2,5);
plot(a4,b4);
title('cosine');
xlabel('x label');
ylabel('y label');
a5=0:0.01:5;
b5=sawtooth(2*pi*a5);
subplot(3,2,6);
plot(a5,b5);
title('sawtooth');
xlabel('x label');
ylabel('y label');
a6=0:0.01:5;
b6=square(2*pi*a6);
subplot(3,3,1);
plot(a6,b6);
title('square');
xlabel('x label');
ylabel('y label');
a7=0:10;
b7=exp(0.3*a7);
subplot(3,3,2);
stem(a7,b7);
title('exponent');
xlabel('x label');
ylabel('y label');