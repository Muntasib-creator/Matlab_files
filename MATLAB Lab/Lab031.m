% %% Fourier representation of full rectangular signal
% %Example 2.4
% for i=1:4;
%     N=1000;
%     x=linspace(0,1,N);      %Number of points in one cycle
%     y1=linspace(0,1,N/4);   %First (1/4)th signal
%     y2=linspace(1,-1,N/2);  %Middle (1/2) signal
%     y3=linspace(-1,0,N/4);  %Last (1/4th signal
%     y=[y1 y2 y3];
%     
%     sum=0;
%     M=2^i;            %How many harmonics used in particuar plot
%     sign=-1;          %'sign' variables to keep track the sign of the sine term of FS
%     for j=1:2:M;
%         sign=sign*(-1);
%         sum=sum+(sign*8)/(pi*pi)*sin(2*pi*j*x)/(j^2);
%     end
%     subplot(2,2,i);plot(x,y,'g','Linewidth',2)
%     hold on
%     subplot(2,2,i);plot(x,sum,'r');
%     title(['Number of harmonics used:',num2str(M)]);
%     subplot(2,2,i); error=abs(sum-y); plot(x,error,'k');
%     axis([0 1 -1 1]);grid
%     legend('Given shape','fourier transformation','error');
% end
% clc;
% clear all;

%%Fourier representation of full rectangular signal
% %Example 2.4
% for i=1:4;
%     N=1000;
%     x=linspace(0,1,N);      %Number of points in one cycle
%     y1=linspace(0,1,N/4);   %First (1/4)th signal
%     y2=linspace(1,-1,N/2);  %Middle (1/2) signal
%     y3=linspace(-1,0,N/4);  %Last (1/4th signal
%     y=[y1 y2 y3];
%     
%     sum=0;
%     M=2^i;            %How many harmonics used in particuar plot
%     sign=-1;          %'sign' variables to keep track the sign of the sine term of FS
%     for j=1:2:M;
%         sign=sign*(-1);
%         sum=sum+(sign*4)/pi*cos(2*pi*j*x)/(j);
%     end
%     subplot(2,2,i);plot(x,y,'g','Linewidth',2)
%     hold on
%     subplot(2,2,i);plot(x,sum,'r');
%     title(['Number of harmonics used:',num2str(M)]);
%     subplot(2,2,i); error=abs(sum-y); plot(x,error,'k');
%     axis([0 1 -1 1]);grid
%     legend('Given shape','fourier transformation','error');
% end
% 
% NEFT=2^nextpow2(N);     %Next power of 2 just greater than length of y
% Y=fft(y,NEFT)/N;
% Abs_Y = abs(Y);
% figure(2);
% plot (Abs_Y);

% Sum of a 50 Hz sinusoid and a 120 Hz sinusoid
t= 0:1/1000:1;
x=0.7*sin(2*pi*50*t)+sin(2*pi*120*t);
y=x+randn(size(t));     %Sinusoids plus noise
figure(3);
plot(t,x);
legend ('Superposition of 2 signal');

xlabel('time');
ylabel('signal x');
subplot('221');
plot(t,y);
xlabel('time');
ylabel('signal y');
legend ('Signal with noise');
subplot('222');

N=1000;
NEFT=2^nextpow2(N);     %Next power of 2 just greater than length of y
Abs_Y = abs(Y);
plot (Abs_Y);

clear all;
clc;




