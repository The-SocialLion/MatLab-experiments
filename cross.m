clc;
clear all;
close all;
x=input('enter the sequnece 1');
h=input('enter sequence 2');
y=xcorr(x,h);
subplot(3,1,1);
stem(x);
title('input');
xlabel('time');
ylabel('amplitude');
subplot(3,1,2);
stem(h);
title('input');
xlabel('time');
ylabel('amplitude');
subplot(3,1,3);
stem(y);
title('output');
xlabel('time');
ylabel('amplitude');
disp('the auto correlation seq1 is');y
