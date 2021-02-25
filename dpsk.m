clc;
clear all;
close all;
M=4;
x=randi([0 M-1],1000,1);
y=dpskmod(x,M,pi/8,'bin');
z=dpskdemod(y,M);
s1=symerr(x,z);
s2=symerr(x(2:end),z(2:end));
y=dpskmod(x,M);
y=dpskmod(x,M,pi/8);
y=dpskmod(x,M,pi/8,'bin');
s=RandStream('mt19937ar','seed',131);
pS=RandStream.setGlobalStream(s);
M=4;
x=randi([0 M-1],500,1);
y=dpskmod(x,M,pi/8,'bin');
plot(y);

