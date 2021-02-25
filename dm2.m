clc;
clear all;
close all;
am= input("enter amplitude");
fm= input("enter frequency");
fs= input("enter sampling frequency");
t =0:1/fs:1;
msg =am*sin (2*pi*fm*t);
disp(msg);
p= length (msg );
subplot (3,1,1)
plot (t,msg);
title('Message Signal');
xlabel ('TIME');
ylabel ('Amplitude');
delta =(2*pi*am*fm)/fs; 
disp (delta);
delta_mod =0;
for i=1:p
if msg (i)>delta_mod (i)
d(i)=1;
delta_mod(i+1)=delta_mod(i)+delta ;
else
d(i)=0;
delta_mod(i+1)=delta_mod(i)-delta ;
end
end
subplot (3,1,2)
stairs ( delta_mod )
title ('Delta Modulated Output ' );
xlabel ( 'TIME ' );
ylabel ( 'AMPLITUDE ' );
demod =0
for i=1: p
if d(i) ==1;
demod (i +1) = delta_mod (i)+ delta ;
else
demod (i +1) = delta_mod (i)-delta ;
end
end
subplot (3 ,1 ,3)
plot ( demod );
title ( 'RECOVERED MESSAGE SIGNAL ' );
xlabel ( 'TIME ' );
ylabel ( 'AMPLITUDE ' );
