clc;
clf;
clear all;
close all;
h=input('enter sequnec');
H=fft(h);
subplot(3,1,1);
stem(H);
title('FFt');
xlabel('X');
ylabel('time');
subplot(3,1,2);
stem(abs(H));
title('Magnitude');
xlabel('X');
ylabel('time');
subplot(3,1,3);
stem(angle(H));
title('Angle');
xlabel('X');
ylabel('time');


