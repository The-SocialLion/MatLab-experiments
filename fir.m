clc;
clf;
clear all;
close all;
rs=input('enter stop band ripple');
rp=input('enter pass band ripple');
fp=input('enter pass band frequency');
fs=input('enter stop band frequency');
f=input('enter sampling frequency');
wp=2*fp/f;
ws=2*fs/f;
num=-20*log10(sqrt(rp*rs))-13;
dem=14.6*(fs-fp)/f;
n=ceil(num/dem);
n1=n+1;
if(rem(n,2)~=0)
    n1=n;
    n=n-1;
end
y=boxcar(n1);
%Lpf
b=fir1(n,wp,y);
[h,o]=freqz(b,1,256);
m=20*log10(abs(h));
subplot(4,1,1);
stem(o/pi,m);
%Hpf
b1=fir1(n,wp,'high',y);
[h1,o1]=freqz(b1,1,256);
m1=20*log10(abs(h1));
subplot(4,1,2);
stem(o1/pi,m1);
%BPF
wn=[wp,ws];
b2=fir1(n,wn,y);
[h2,o2]=freqz(b2,1,256);
m2=20*log10(abs(h2));
subplot(4,1,3);
stem(o2/pi,m2);
%BSF
wn=[wp,ws];
b3=fir1(n,wn,'stop',y);
[h3,o3]=freqz(b3,1,256);
m3=20*log10(abs(h3));
subplot(4,1,4);
stem(o3/pi,m3);
 