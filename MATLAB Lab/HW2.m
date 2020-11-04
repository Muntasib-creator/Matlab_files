fs=1000;        % Assume sampling interval
t=0:1/fs:1;     % Generate time vector

x=exp(j*2*t);
% subplot('121');
% plot(t,real(z),'k',t,imag(z),'r');grid
% xlabel('Time(sec)');
% ylabel('x(t)');
% 
% 
% zz=exp(-j*2*pi*t);
% subplot('122');
% plot(t,real(zz),'k',t,imag(zz),'r');grid
% xlabel('Time(sec)');
% ylabel('x(t)');
% legend ('Real x(t)','imag x(t)');

xmin=min(x);        %Evaluate Minimum value of x
xmax=max(x);        %Evaluate maximum value of x
xmean=mean(x);      %Evaluate Mean of x
xvar=var(x);        %Variance of x
xstad=std(x); 
xk=kurtosis(x);
xs=skewness(x);