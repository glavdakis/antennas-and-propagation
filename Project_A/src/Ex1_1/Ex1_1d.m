theta_points=181;
phi_points=361;
theta=linspace(0, pi, theta_points);
phi=linspace(0, 2*pi, phi_points);
[Theta, Phi]=meshgrid(theta, phi);
N_x=24;
N_y=16;
kd=pi;

%% theta_0=0

psi_x=kd*cos(Phi).*sin(Theta);
psi_y=kd*sin(Phi).*sin(Theta);

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));

square_A=(absA_x.*absA_y).^2;
ds=sin(theta)*(pi/(theta_points-1))*(2*pi/(phi_points-1));

sum_square_A=sum(sum(square_A.*ds,'omitnan'));
max_square_A=max(square_A(:));

D=4*pi*max_square_A/sum_square_A;
D_dB=10*log10(D);

%% theta_0=30, phi_0=0

psi_x=kd*cos(Phi).*sin(Theta)-pi/2;
psi_y=kd*sin(Phi).*sin(Theta);

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));

square_A=(absA_x.*absA_y).^2;
ds=sin(theta)*(pi/(theta_points-1))*(2*pi/(phi_points-1));

sum_square_A=sum(sum(square_A.*ds,'omitnan'));
max_square_A=max(square_A(:));

D=4*pi*max_square_A/sum_square_A;
D_dB=10*log10(D);

%% theta_0=30, phi_0=30

psi_x=kd*cos(Phi).*sin(Theta)-sqrt(3)*pi/4;
psi_y=kd*sin(Phi).*sin(Theta)-pi/4;

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));

square_A=(absA_x.*absA_y).^2;
ds=sin(theta)*(pi/(theta_points-1))*(2*pi/(phi_points-1));

sum_square_A=sum(sum(square_A.*ds,'omitnan'));
max_square_A=max(square_A(:));

D=4*pi*max_square_A/sum_square_A;
D_dB=10*log10(D);

%% theta_0=30, phi_0=60

psi_x=kd*cos(Phi).*sin(Theta)-pi/4;
psi_y=kd*sin(Phi).*sin(Theta)-sqrt(3)*pi/4;

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));

square_A=(absA_x.*absA_y).^2;
ds=sin(theta)*(pi/(theta_points-1))*(2*pi/(phi_points-1));

sum_square_A=sum(sum(square_A.*ds,'omitnan'));
max_square_A=max(square_A(:));

D=4*pi*max_square_A/sum_square_A;
D_dB=10*log10(D);

%% theta_0=30, phi_0=90

psi_x=kd*cos(Phi).*sin(Theta);
psi_y=kd*sin(Phi).*sin(Theta)-pi/2;

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));

square_A=(absA_x.*absA_y).^2;
ds=sin(theta)*(pi/(theta_points-1))*(2*pi/(phi_points-1));

sum_square_A=sum(sum(square_A.*ds,'omitnan'));
max_square_A=max(square_A(:));

D=4*pi*max_square_A/sum_square_A;
D_dB=10*log10(D);

%% theta_0=60, phi_0=0

psi_x=kd*cos(Phi).*sin(Theta)-sqrt(3)*pi/2;
psi_y=kd*sin(Phi).*sin(Theta);

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));

square_A=(absA_x.*absA_y).^2;
ds=sin(theta)*(pi/(theta_points-1))*(2*pi/(phi_points-1));

sum_square_A=sum(sum(square_A.*ds,'omitnan'));
max_square_A=max(square_A(:));

D=4*pi*max_square_A/sum_square_A;
D_dB=10*log10(D);

%% theta_0=60, phi_0=30

psi_x=kd*cos(Phi).*sin(Theta)-3*pi/4;
psi_y=kd*sin(Phi).*sin(Theta)-sqrt(3)*pi/4;

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));

square_A=(absA_x.*absA_y).^2;
ds=sin(theta)*(pi/(theta_points-1))*(2*pi/(phi_points-1));

sum_square_A=sum(sum(square_A.*ds,'omitnan'));
max_square_A=max(square_A(:));

D=4*pi*max_square_A/sum_square_A;
D_dB=10*log10(D);

%% theta_0=60, phi_0=60

psi_x=kd*cos(Phi).*sin(Theta)-sqrt(3)*pi/4;
psi_y=kd*sin(Phi).*sin(Theta)-3*pi/4;

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));

square_A=(absA_x.*absA_y).^2;
ds=sin(theta)*(pi/(theta_points-1))*(2*pi/(phi_points-1));

sum_square_A=sum(sum(square_A.*ds,'omitnan'));
max_square_A=max(square_A(:));

D=4*pi*max_square_A/sum_square_A;
D_dB=10*log10(D);

%% theta_0=60, phi_0=90

psi_x=kd*cos(Phi).*sin(Theta);
psi_y=kd*sin(Phi).*sin(Theta)-sqrt(3)*pi/2;

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));

square_A=(absA_x.*absA_y).^2;
ds=sin(theta)*(pi/(theta_points-1))*(2*pi/(phi_points-1));

sum_square_A=sum(sum(square_A.*ds,'omitnan'));
max_square_A=max(square_A(:));

D=4*pi*max_square_A/sum_square_A;
D_dB=10*log10(D);


