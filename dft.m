clc;
clf;
clear all;
close all;
x=input('enter the seq');
N1=length(x);
N=input('enter the dft');
if(N1<N)
    N2=N-N1;
    x=[x,zeros(1,N2)];
end
for k=1:N
    y(k)=0;
    for n=1:N
        y(k)=y(k)+x(n)*exp(-1i*2*pi*(n-1)*(k-1)/N);
    end
end

R=real(y);
I=imag(y);
M=R.^2+I.^2;
for i=1:N
    p(i)=atan(I(i)/R(i));
end
subplot(3,2,1);
stem(x);
title('input');
xlabel('x');
ylabel('amplitude');
subplot(3,2,2);
stem(y);
title('output');
xlabel('x');
ylabel('amplitude');
subplot(3,2,3);
stem(R);
title('real part');
xlabel('x');
ylabel('amplitude');
subplot(3,2,4);
stem(I);
title('Imag part');
xlabel('x');
ylabel('amplitude');
subplot(3,2,5);
stem(M);
title('Magnitude part');
xlabel('x');
ylabel('amplitude');
subplot(3,2,6);
stem(p);
title('Phase part');
xlabel('x');
ylabel('amplitude');
disp('Phase response');p
disp('Magnitude response');M
