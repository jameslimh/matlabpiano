fs=12000;
t1 = ([0:1/fs:2-1/fs]);
t2 = ([0:1/fs:2-1/fs]);
y= 1*cos(2*pi*(220*2^(5/12))*t1);
x=1*cos(2*pi*(220*2^(0/12))*t2);
t=0.5;
z2=0;
z3=["d06,0.33,1","c#6,0.33,1","c06,0.33,1","b06,0.5,1",...
    "g05,0.5,1","d05,0.5,1","g05,0.5,1","b06,0.5,1",...
    "g05,0.5,1","d06,0.5,1","b06,0.5,1",...
    "g06,0.33,1","f#6,0.33,1","g06,0.33,1","a07,0.33,1",...
    "g06,0.33,1","f#6,0.33,1","g06,0.5,1",...
    "d06,0.5,1","b06,0.5,1","g05,0.5,1","f#5,0.5,1",...
    "e05,0.5,1","f#5,0.5,1","g05,0.5,1","A06,0.5,1",...
    "b06,0.5,1","c06,0.33,1","b06,0.33,1","a06,0.33,1",...
    "d06,0.5,1","c#6,0.5,1","d06,0.5,1","e06,0.5,1",...
    "f#6,0.5,1","d06,0.5,1","c06,0.5,1","a06,0.5,1","b06,0.5,1",...
    "g05,0.5,1","d05,0.5,1","g05,0.5,1","b06,0.5,1",...
    "g05,0.5,1","d06,0.5,1","b06,0.5,1",...
    "g06,0.33,1","f#6,0.33,1","g06,0.33,1","a07,0.33,1",...
    "g06,0.33,1","f#6,0.33,1","g06,0.5,1",...
    "d06,0.5,1","b06,0.5,1","g05,0.5,1",...
    "b06,0.33,1","c06,0.33,1","d06,0.33,1",...
    "g07,0.5,1","d06,0.5,1","c06,0.5,1","a06,0.5,1",...
    "f#5,0.5,1","g05,0.5,1","a06,0.5,1","g05,0.5,1",...
    "g05,0.5,1","f#5,0.5,1","g05,2,1"];
for i=1:length(z3)
    z2=[z2 chord(z3(i),t,0.5)];
    
end
% w=pi*440;
% y=0.6*sin(1*w*t1).*exp(-0.0015*w*t1)+0.4*sin(2*w*t1).*exp(-0.0015*w*t1);
% y = y+ y.*y.*y;
% y= y.*(1+16*t1.*exp(-6*t1));

soundsc(z2,fs);
