clc;
clear all;
close all;
x=input('enter sequence 1');
n1=input('enter range');
h=input('enter sequnce 2');
n2=input('enter range');
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
y=conv(x,h);
n=(min(n1)+min(n2)):1:(max(n1)+max(n2));
subplot(3,1,3);
stem(y);
title('output');
xlabel('time');
ylabel('amplitude');
disp('the convoluted sequnce is');y


