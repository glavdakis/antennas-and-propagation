function absA=Calc_absA(p)

% function Calc_absA has input the vector p and returns the absolute
% value of array factor A when theta takes values from 0 to 180 degrees
% p contains the values of I2, I3, I4, I5

I2=p(1);
I3=p(2);
I4=p(3);
I5=p(4);
I1=1;

theta=linspace(0, 2*pi, 361);
kd=pi;
psi=kd*cos(theta);

absA=abs(I1.*(1+exp(1i*9*psi))+I2.*(exp(1i*psi)+exp(1i*8*psi))+I3.*(exp(1i*2*psi)+exp(1i*7*psi))+...
    I4.*(exp(1i*3*psi)+exp(1i*6*psi))+I5.*(exp(1i*4*psi)+exp(1i*5*psi)));

