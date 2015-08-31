clc;
clear;
load('creativitydata');

row = size(creativitydata,1);

creativitydistb=zeros(row,1);

C=0;
for i=1:row
    %capable
    C = C + creativitydata(i,1);
    %artificial
    C = C + reversescore(creativitydata(i,2));
    %clever
    C = C + creativitydata(i,3);
    %cautious
    C = C + reversescore(creativitydata(i,4));
    %confident
    C = C + creativitydata(i,5);
    %egotistical
    C = C + creativitydata(i,6);
    %commonplace
    C = C + reversescore(creativitydata(i,7));
    %humorous
    C = C + creativitydata(i,8);
    %conservative
    C = C + reversescore(creativitydata(i,9));
    %individualistic
    C = C + creativitydata(i,10);
    %conventional
    C = C + reversescore(creativitydata(i,11));
    %informal
    C = C + creativitydata(i,12);
    %dissatisified
    C = C + reversescore(creativitydata(i,13));
    %insightful
    C = C + creativitydata(i,14);
    %suspicious
    C = C + reversescore(creativitydata(i,15));
    %honest
    C = C + reversescore(creativitydata(i,16));
    %intelligent
    C = C + creativitydata(i,17);
    %well-mannered
    C = C + reversescore(creativitydata(i,18));
    %wide interests
    C = C + creativitydata(i,19);
    %inventive
    C = C + creativitydata(i,20);
    %original
    C = C + creativitydata(i,21);
    %narrow interests
    C = C + reversescore(creativitydata(i,22));
    %reflective
    C = C + creativitydata(i,23);
    %sincere
    C = C + reversescore(creativitydata(i,24));
    %resourceful
    C = C + creativitydata(i,25);
    %self-confident
    C = C + creativitydata(i,26);
    %sexy
    C = C + creativitydata(i,27);
    %submissive
    C = C + reversescore(creativitydata(i,28));
    %snobbish
    C = C + creativitydata(i,29);
    %unconventional
    C = C + creativitydata(i,30);
    
    creativitydistb(i,1) = round(C);
    C=0;
end
creativitydistb1 = normalizeScaling(creativitydistb,1,100);
