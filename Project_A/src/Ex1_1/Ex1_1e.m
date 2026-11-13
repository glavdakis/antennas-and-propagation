%% 3D radiation pattern

theta=linspace(0,pi,500);  
phi=linspace(0,2*pi,1000); 
[Theta, Phi] = meshgrid(theta, phi);
N_x=24;
N_y=16;
kd=pi/2;

psi_x=kd*cos(Phi).*sin(Theta)-pi/2-2.92/N_x;
psi_y=kd*sin(Phi).*sin(Theta);

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x.*absA_y;
X=E.*sin(Theta).*cos(Phi);
Y=E.*sin(Phi).*sin(Theta);
Z=E.*cos(Theta);

surf(X, Y, Z,'EdgeColor','none');
colormap("winter")

xlabel('X');
ylabel('Y');
zlabel('Z');
xlim([-50 300])
ylim([-200 200])
title('3D radiation pattern of end fire Hansen-Woodyard');
grid on;

%% Directivity

theta_points=181;
phi_points=361;
theta=linspace(0, pi, theta_points);
phi=linspace(0, 2*pi, phi_points);
[Theta, Phi]=meshgrid(theta, phi);
N_x=24;
N_y=16;
kd=pi/2;

psi_x=kd*cos(Phi).*sin(Theta)-pi/2-2.92/N_x;
psi_y=kd*sin(Phi).*sin(Theta);

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));

square_A=(absA_x.*absA_y).^2;
ds=sin(theta)*(pi/(theta_points-1))*(2*pi/(phi_points-1));

sum_square_A=sum(sum(square_A.*ds,'omitnan'));
max_square_A=max(square_A(:));

D=4*pi*max_square_A/sum_square_A;
D_dB=10*log10(D);


