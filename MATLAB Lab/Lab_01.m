f=2;
t=0:0.01:1;
x=5*sin(2*pi*f*t);

clc;
clear all;

x=[1 2 3 4];
y=x'

clc;
clear all;

y=[1;2;3;4];
z=[1 2;3 4;5 6];

clc;
clear all;

n=0:10;
nn=linspace(0,10,11);
n1=0:2:10;
nn1=1:10;
nn1=[n n1];

clc;
clear all;

z=ones(1,10);
A=ones(5,5);
x1=[zeros(1,5)];

clc;
clear All;

A(2:5,2:5)=zeros(4,4);
y=rand(1,10);
y1=randn(1,10);
x=[1 2 3 4];
z=3*x;  %all elements multiplied by 3
v=z.*x; %multiplication of 2 vectors ans [1 4 9 16]
w=x*x'; %multplication of rowx (row vector) by x' (column vector) ans:30

clc;
clear All;

%% unit impulse
t1=-3:1:3;
b=0;
x1=[b,b,b,1,b,b,b];
%ploting the function x1
figure(1);
subplot('231');
plot(t1,x1);
hold on;
stem(t1,x1);
xlabel('Time');
ylabel('Amplitude');
title('Unit impulse signal');

%% unit step signal
t2=-5:1:25;
x2=[zeros(1,5),ones(1,26)];

subplot('232');
plot(t2,x2);
% stem(t2,x2);
title('Unit Step signal');
xlabel('Time');
ylabel('Amplitude');

%% unit Ramp signal
t3=-10:1:10;
x3=t3;
subplot('233');
plot(t3,x3);
% stem(t3,x3);
title('Unit Ramp signal');
xlabel('Time');
ylabel('Amplitude');

%% Exponensial signal
a=0.5;    %input('Enter The value of a:');
t4=-5:0.001:5;
x4=exp(-1*a*t4);
subplot('234');
plot(t4,x4);
% stem(t4,x4);
title('Exponensial Signal');
xlabel('Time');
ylabel('Amplitude');

%% Sinusoidal signal
a=0.2;    %input('Enter The value of a:');
f=0.1;
t5=-5:0.1:5;
x5=a*cos(2*pi*f*t5);
y5=a*sin(2*pi*f*t5);
subplot('235');
plot(t5,x5);
hold on;
plot(t5,y5);
title('Sinusoidal Signal');
xlabel('Time');
ylabel('Amplitude');



















