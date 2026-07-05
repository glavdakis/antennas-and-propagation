theta=linspace(0,pi,500);  
phi=linspace(0,2*pi,1000); 
[Theta, Phi] = meshgrid(theta, phi);
N_x=24;
N_y=16;
kd=pi;

%% theta_0=0

% theta_0=0, phi_0=0

psi_x=kd*cos(Phi).*sin(Theta);
psi_y=kd*sin(Phi).*sin(Theta);

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x.*absA_y;
X=E.*sin(Theta).*cos(Phi);
Y=E.*sin(Phi).*sin(Theta);
Z=E.*cos(Theta);

tiledlayout(2,2);
nexttile
surf(X, Y, Z,'EdgeColor','none');
colormap("winter")

xlabel('X');
ylabel('Y');
zlabel('Z');
xlim([-200 200])
ylim([-200 200])
title('3D radiation pattern [θ_0, φ_0]=[0^o,0^o]');
grid on;
nexttile

% theta_0=0, phi_0=30

psi_x=kd*cos(Phi).*sin(Theta);
psi_y=kd*sin(Phi).*sin(Theta);

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x.*absA_y;
X=E.*sin(Theta).*cos(Phi);
Y=E.*sin(Phi).*sin(Theta);
Z=E.*cos(Theta);

surf(X, Y, Z,'EdgeColor','none');

xlabel('X');
ylabel('Y');
zlabel('Z');
xlim([-200 200])
ylim([-200 200])
title('3D radiation pattern [θ_0, φ_0]=[0^o,30^o]');
grid on;
nexttile

% theta_0=0, phi_0=60

psi_x=kd*cos(Phi).*sin(Theta);
psi_y=kd*sin(Phi).*sin(Theta);

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x.*absA_y;
X=E.*sin(Theta).*cos(Phi);
Y=E.*sin(Phi).*sin(Theta);
Z=E.*cos(Theta);

surf(X, Y, Z,'EdgeColor','none');

xlabel('X');
ylabel('Y');
zlabel('Z');
xlim([-200 200])
ylim([-200 200])
title('3D radiation pattern [θ_0, φ_0]=[0^o,60^o]');
grid on;
nexttile

% theta_0=0, phi_0=90

psi_x_iv=kd*cos(Phi).*sin(Theta);
psi_y_iv=kd*sin(Phi).*sin(Theta);

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x.*absA_y;
X=E.*sin(Theta).*cos(Phi);
Y=E.*sin(Phi).*sin(Theta);
Z=E.*cos(Theta);

surf(X, Y, Z,'EdgeColor','none');

xlabel('X');
ylabel('Y');
zlabel('Z');
xlim([-200 200])
ylim([-200 200])
title('3D radiation pattern [θ_0, φ_0]=[0^o,90^o]');
grid on;

%% theta_0=30

% theta_0=30, phi_0=0

psi_x=kd*cos(Phi).*sin(Theta)-pi/2;
psi_y=kd*sin(Phi).*sin(Theta);

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x.*absA_y;
X=E.*sin(Theta).*cos(Phi);
Y=E.*sin(Phi).*sin(Theta);
Z=E.*cos(Theta);

tiledlayout(2,2);
nexttile
surf(X, Y, Z,'EdgeColor','none');
colormap("winter")

xlabel('X');
ylabel('Y');
zlabel('Z');
xlim([-50 200])
ylim([-50 200])
title('3D radiation pattern [θ_0, φ_0]=[30^o,0^o]');
grid on;
nexttile

% theta_0=30, phi_0=30

psi_x=kd*cos(Phi).*sin(Theta)-sqrt(3)*pi/4;
psi_y=kd*sin(Phi).*sin(Theta)-pi/4;

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x.*absA_y;
X=E.*sin(Theta).*cos(Phi);
Y=E.*sin(Phi).*sin(Theta);
Z=E.*cos(Theta);

surf(X, Y, Z,'EdgeColor','none');

xlabel('X');
ylabel('Y');
zlabel('Z');
xlim([-50 200])
ylim([-50 200])
title('3D radiation pattern [θ_0, φ_0]=[30^o,30^o]');
grid on;
nexttile

% theta_0=30, phi_0=60

psi_x=kd*cos(Phi).*sin(Theta)-pi/4;
psi_y=kd*sin(Phi).*sin(Theta)-sqrt(3)*pi/4;

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x.*absA_y;
X=E.*sin(Theta).*cos(Phi);
Y=E.*sin(Phi).*sin(Theta);
Z=E.*cos(Theta);

surf(X, Y, Z,'EdgeColor','none');

xlabel('X');
ylabel('Y');
zlabel('Z');
xlim([-50 200])
ylim([-50 200])
title('3D radiation pattern [θ_0, φ_0]=[30^o,60^o]');
grid on;
nexttile

% theta_0=30, phi_0=90

psi_x=kd*cos(Phi).*sin(Theta);
psi_y=kd*sin(Phi).*sin(Theta)-pi/2;

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x.*absA_y;
X=E.*sin(Theta).*cos(Phi);
Y=E.*sin(Phi).*sin(Theta);
Z=E.*cos(Theta);

surf(X, Y, Z,'EdgeColor','none');

xlabel('X');
ylabel('Y');
zlabel('Z');
xlim([-50 200])
ylim([-50 200])
title('3D radiation pattern [θ_0, φ_0]=[30^o,90^o]');
grid on;

%% theta_0=60

% theta_0=60, phi_0=0

psi_x=kd*cos(Phi).*sin(Theta)-sqrt(3)*pi/2;
psi_y=kd*sin(Phi).*sin(Theta);

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x.*absA_y;
X=E.*sin(Theta).*cos(Phi);
Y=E.*sin(Phi).*sin(Theta);
Z=E.*cos(Theta);

tiledlayout(2,2);
nexttile
surf(X, Y, Z,'EdgeColor','none');
colormap("winter")

xlabel('X');
ylabel('Y');
zlabel('Z');
xlim([-100 400])
ylim([-100 400])
title('3D radiation pattern [θ_0, φ_0]=[60^o,0^o]');
grid on;
nexttile

% theta_0=60, phi_0=30

psi_x=kd*cos(Phi).*sin(Theta)-3*pi/4;
psi_y=kd*sin(Phi).*sin(Theta)-sqrt(3)*pi/4;

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x.*absA_y;
X=E.*sin(Theta).*cos(Phi);
Y=E.*sin(Phi).*sin(Theta);
Z=E.*cos(Theta);

surf(X, Y, Z,'EdgeColor','none');

xlabel('X');
ylabel('Y');
zlabel('Z');
xlim([-100 400])
ylim([-100 400])
title('3D radiation pattern [θ_0, φ_0]=[60^o,30^o]');
grid on;
nexttile

% theta_0=60, phi_0=60

psi_x=kd*cos(Phi).*sin(Theta)-sqrt(3)*pi/4;
psi_y=kd*sin(Phi).*sin(Theta)-3*pi/4;

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x.*absA_y;
X=E.*sin(Theta).*cos(Phi);
Y=E.*sin(Phi).*sin(Theta);
Z=E.*cos(Theta);

surf(X, Y, Z,'EdgeColor','none');

xlabel('X');
ylabel('Y');
zlabel('Z');
xlim([-100 400])
ylim([-100 400])
title('3D radiation pattern [θ_0, φ_0]=[60^o,60^o]');
grid on;
nexttile

% theta_0=60, phi_0=90

psi_x=kd*cos(Phi).*sin(Theta);
psi_y=kd*sin(Phi).*sin(Theta)-sqrt(3)*pi/2;

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x.*absA_y;
X=E.*sin(Theta).*cos(Phi);
Y=E.*sin(Phi).*sin(Theta);
Z=E.*cos(Theta);

surf(X, Y, Z,'EdgeColor','none');

xlabel('X');
ylabel('Y');
zlabel('Z');
xlim([-100 400])
ylim([-100 400])
title('3D radiation pattern [θ_0, φ_0]=[60^o,90^o]');
grid on;



