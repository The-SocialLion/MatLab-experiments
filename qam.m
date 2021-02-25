clc;
clear all;
close all;
M=16;
k=log2(M);
n=3000;
OF=1;
di=randi([0 1],n,1);
dim=reshape(di,length(di)/k,k);
dim1=bi2de(dim);
mod=qammod(dim1,M,'bin');
EBNO=10;
snr=EBNO+10*log10(k)-10*log10(OF);
op=awgn(mod,snr,'measured');
dem=qamdemod(op,M,'bin');
do=de2bi(dem,k);
do1=do(:);
plot(mod);

