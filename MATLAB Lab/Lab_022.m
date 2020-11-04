clc;
a=1:1:10;
phase=myfn(a);
phase
% clc;
% clear all;
fs=1000;        %Assume sampling interval
f=2;            %frequency of sine wave
t=0:1/fs:1;     %Generate time vector
x=5*sin(2*pi*f*t);

xmin=min(x);        %Evaluate Minimum value of x
xmax=max(x);        %Evaluate maximum value of x
xmean=mean(x);      %Evaluate Mean of x
xvar=var(x);        %Variance of x
xstad=std(x);       % Evaluate Standard deviation of x
RMS=sqrt(mean(x.^2));   %Evaluate the root mean square
display(xmin);      %Display text and numeric expression
display(xmax);
display(xmean);
display(xvar);
display(xstad);

% %% Demonstrate of the Eulers eqn i Matlab
% %e(+-jwt)=cos(wt)+-jsin(wt)
% %real part of the Eulers Exponensial real[Euler}= cos(wt)
% %imaginary part of the Eulers Exponensial Imaginary[Euler]= -sin(wt)
% clc;
% clear all;
% fs=1000;        % Assume sampling interval
% t=0:1/fs:1;     % Generate time vector
% 
% z=exp(-j*2*pi*t);
% plot(t,real(z),'k',t,imag(z),'r');grid
% xlabel('Time(sec)');
% ylabel('x(t)');
% legend ('Real x(t)','imag x(t)');
% 
% %Solution of Linear set of eqn Ax=b
% 
% clc;
% clear all;
% A=[1 0 0;2 2 0;3 3 3];
% t=det(A);       %MATLAB function that calculates determinant
% b=[2 2 2]';     %MATLAB function that inverts a matrix
% x=inv(A)*b;     %MATLAV function that the text in
% disp('Ax=b');
% A
% b
% x
% t