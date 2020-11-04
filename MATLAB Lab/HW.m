%% unit step signal
t2=-5:1:25;
x2=[zeros(1,13),ones(1,18)];
subplot('231');
plot(t2,x2);
title('i)Unit Step signal for u(n-7)');
xlabel('Time');
ylabel('Amplitude');

%% unit impulse
t1=-10:1:5;
b=0;
x1=zeros(1,16);     
x1(1,8)=1;
figure(1);
subplot('232');
stem(t1,x1);
xlabel('Time');
ylabel('Amplitude');
title('ii) Unit impulse signal for d(n+3)');

%% unit step signal
t2=-5:1:25;
x2=[zeros(1,11),ones(1,20)];
xx2=[zeros(1,16),ones(1,15)];
subplot('233');
plot(t2,x2+xx2*3);
title('iii)Unit Step signal for 3u(n-2)+u(n-5)');
xlabel('Time');
ylabel('Amplitude');

%% Exponensial signal
f=0.01;
w=2*pi*f;
t4=-5:0.001:5;
x4=5*exp(-7*w*t4);
subplot('234');
plot(t4,x4);
title('iv) Exponensial Signal');
xlabel('Time');
ylabel('Amplitude');

%% Sinusoidal signal
t5=0:1:40;
x5=sin(30*t5);
y5= rand(1,41);
subplot('235');
plot(t5,x5+y5);
title('v) Sinusoidal Signal for sin(30*pi*t)+rand(1,41)');
xlabel('Time');
ylabel('Amplitude');