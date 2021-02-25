clc;
clear all;
close all;
n=input('enter the bits');
y=length(n);
freq1=input('enter frequency 1');
freq2=input('enter frequency 2 ');
for i=1:y
    if n(1,i)==0
        for t=(i-1)*100+1:100*i
            y(t)=sin(2*pi*freq1*t/1000);
            x(t)=0;
        end
    else
        for t=(i-1)*100+1:100*i
            y(t)=sin(2*pi*freq2*t/1000);
            x(t)=1;
        end
    end
end
figure(1);
subplot(2,1,1);
plot(x);
xlabel('time');
ylabel('frequency');
figure(2);
subplot(2,1,2);
plot(y);
xlabel('time');
ylabel('frequency');

    
