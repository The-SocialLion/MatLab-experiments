clc;
clear all; 
close all;
n=input('Enter the data bits'); 
y=length(n);
freq=input('enter the frequency'); 
for i=1:y
if n(1,i)==0
for t=((i-1)*100+1):(i*100)
y(t)=sin(2*pi*freq*t/1000+pi);
x(t)=0;
end
else
for t=(i-1)*100+1:(i*100)
y(t)=sin(2*pi*freq*t/1000);
x(t)=1;
end
end
end
figure(1);
subplot(2,1,1);
plot(x);
title('input data');
subplot(2,1,2);
plot(y); xlabel('time in sec');
ylabel('amplitude in volts');
 title('PSK');
grid on;
