clc;
close all;
clear all;
f=1;
fs=20*f;
t1=0:0.01:2;
a=10;
msg=a*sin(2*pi*f*t1);
subplot(3,2,1);
plot(t1,msg);
xlabel('time');
ylabel('amplitude');
title('original message');
t=0:1/fs:2;
samp=a*sin(2*pi*f*t);
subplot(3,2,2);
stem(t,samp)
xlabel('time');
ylabel('amplitude');
title('message signal');
x1=samp+a;
disp(x1);
quant=round(x1);
disp(quant);
subplot(3,2,3);
stairs(t,quant)
xlabel('Time');
ylabel('amplitude');
title('quantised signal');
enco=dec2bin(quant);
disp(enco)
deco=bin2dec(enco);
subplot(3,2,4);
stairs(t,deco)
xlabel('time');
ylabel('amplitude');
title('decoded signal');
recover=deco-a;
subplot(3,2,5);
plot (t,recover)
xlabel('time');
ylabel('amplitude');
title('Recovered signal');
subplot(3,2,6);
plot(t,recover,'r',t,samp,'g');
axis([0 2 -20 20])
xlabel('time');
ylabel('amplitude');
title('recovered vs original signal');


