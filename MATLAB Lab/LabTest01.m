
f=0.01;
w=2*pi*f;
t4=-5:0.001:5;
x4=exp(-5*w*t4);

t2=-5:1:25;
x2=[zeros(1,8),ones(1,23)];

t1=-10:1:5;
x1=zeros(1,16);     
x1(1,8)=1;

figure(1);
% subplot('231');
plot(t4,x4);
hold on;
plot(t2,x2);
hold on;
stem(t1,x1);

title('Signals');
xlabel('Time');
ylabel('Amplitude');
