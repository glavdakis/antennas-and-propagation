function [R_21m,X_21m]= Mutual_Impedance(d)

% function Mutual_Impedance has input the vector d and returns the real
% and imaginary part of mutual impedance Z between 2 parallel dipoles 
% d is the distance between the 2 dipoles

l=1/2;
k=2*pi;
eta_0=120*pi;

u0=k*d;
u1=k*(sqrt(d.^2+l^2)+l);
u2=k*(sqrt(d.^2+l^2)-l);

R_21m=(eta_0/(4*pi))*(2*cosint(u0)-cosint(u1)-cosint(u2));
X_21m=-(eta_0/(4*pi))*(2*sinint(u0)-sinint(u1)-sinint(u2));

