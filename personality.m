clc;
clear;
load('personalitydata');

row = size(personalitydata,1);
%record personality distb for each subject
personalitydistb=zeros(row, 5);

%extraversion
E=0;
%agreeablness
A=0;
%conscientiousness
C=0;
%neuroticism
N=0;
%intellect/imagination
I=0;

for(i=1:row)
    E = personalitydata(i,1) + reversescore(personalitydata(i,6)) + personalitydata(i,11) + reversescore(personalitydata(i,16));
    E = E/4;
    A = personalitydata(i,2) + reversescore(personalitydata(i,7)) + personalitydata(i,12)  + reversescore(personalitydata(i,17));
    A = A/4;
    C = personalitydata(i,3) + reversescore(personalitydata(i,8)) + personalitydata(i,13)  + reversescore(personalitydata(i,18));
    C = C/4;
    N = personalitydata(i,4) + reversescore(personalitydata(i,9)) + personalitydata(i,14)  + reversescore(personalitydata(i,19));
    N = N/4;
    I = personalitydata(i,5) + reversescore(personalitydata(i,10)) + reversescore(personalitydata(i,15)) + reversescore(personalitydata(i,20));
    I = I/4;
    
    personalitydistb(i,1)=round(E);
    personalitydistb(i,2)=round(A);
    personalitydistb(i,3)=round(C);
    personalitydistb(i,4)= round(N);
    personalitydistb(i,5)=round(I);
    
    E=0;
    A=0;
    C=0;
    N=0;
    I=0;
end
