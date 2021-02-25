clc
clear all
close all
N=input('enter the order of filter');
wc=0.5*pi;
b=fir1(N,wc/pi,boxcar(N+1));
w=0:0.01:pi;
h=freqz(b,1,w);
subplot(2,1,1);
plot(w/pi,20*log10(abs(h)));
ylabel('magnitude');
xlabel('nf');
title('magnitude response');
subplot(2,1,2);
plot(w/pi,angle(h));
xlabel('nf');
ylabel('angle');
title('phase response');