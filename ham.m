clc;
clear all;
close all;
g=input('enter g matrix ');
disp('g=>');
disp('order,k:');
[n,k]=size(transpose(g));
for i=2^k
    for j=k:-1:1
        if rem(i-1,2^(-j+k+1)>=2^(-j+k))
            u(i,j)=1;
        else
            u(i,j)=0;
        end
    end
end
disp('the codeqords is ')
c=rem(u*g,2);
disp('the min hamming distance is')
dmin=min(sum(c(2:2^j,:))'));
r=input('enter codeword');
p=[g(:,n+k-2:n)];
h=[transpose(p) eye(n-k)];
ht=transpose(h);
s=rem(r*ht,2);
if s==0
    disp('No error in sequence');r ;
else
    for i=1:1:size(ht)
        if(ht(i,1:3))==s
            r(i)=1-r(i);
        break
        end
    end
    disp('the error in sequence');i;
    disp('the corrected sequence is');r;
end

        
