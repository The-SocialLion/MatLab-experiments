clc;
clear all;
close all;
x=input('enter the sequnece 1');
y=xcorr(x,x);
subplot(2,1,1);
stem(x);
title('input');
xlabel('time');
ylabel('amplitude');
subplot(2,1,2);
stem(y);
title('input');
xlabel('time');
ylabel('amplitude');
disp('the auto correlation seq1 is');y
