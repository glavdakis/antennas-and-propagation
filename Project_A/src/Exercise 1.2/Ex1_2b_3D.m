% theta_0=0;

theta=linspace(0,pi,500);  
phi=linspace(0,pi,500); 
[Theta, Phi] = meshgrid(theta, phi);
kd=pi/2;
theta_0=0;

E=2*abs(sin(kd*sin(Phi).*sin(Theta)+theta_0));
X=E.*sin(Theta).*cos(Phi);
Y=E.*sin(Phi).*sin(Theta);
Z=E.*cos(Theta);

reflector_x=linspace(-2,2,500);
reflector_Y=zeros(500,500);
reflector_z= linspace(-2,2,500);
[reflector_X, reflector_Z] = meshgrid(reflector_x, reflector_z);

tiledlayout(2,2);
nexttile;
surf(X, Y, Z,'EdgeColor','none',"MarkerEdgeColor","b");
hold on
surf(reflector_X, reflector_Y, reflector_Z)
xlabel('X');
ylabel('Y');
zlabel('Z');
ylim([-1 2.5])
title('3D radiation pattern θ_0=0^o');
nexttile

% theta_0=30;

kd=pi/2;
theta_0=pi/6;

E=2*abs(sin(kd*sin(Phi).*sin(Theta)+theta_0));
X=E.*sin(Theta).*cos(Phi);
Y=E.*sin(Phi).*sin(Theta);
Z=E.*cos(Theta);

surf(X, Y, Z,'EdgeColor','none')
colormap("winter")
hold on
surf(reflector_X, reflector_Y, reflector_Z)
xlabel('X');
ylabel('Y');
zlabel('Z');
ylim([-1 2.5])
title('3D radiation pattern θ_0=30^o');
nexttile

% theta_0=60;

kd=pi/2;
theta_0=pi/3;

E=2*abs(sin(kd*sin(Phi).*sin(Theta)+theta_0));
X=E.*sin(Theta).*cos(Phi);
Y=E.*sin(Phi).*sin(Theta);
Z=E.*cos(Theta);

surf(X, Y, Z,'EdgeColor','none');
hold on
surf(reflector_X, reflector_Y, reflector_Z)
xlabel('X');
ylabel('Y');
zlabel('Z');
ylim([-1 2.5])
title('3D radiation pattern θ_0=60^o');
nexttile

% theta_0=90;

kd=pi/2;
theta_0=pi/2;

E=2*abs(sin(kd*sin(Phi).*sin(Theta)+theta_0));
X=E.*sin(Theta).*cos(Phi);
Y=E.*sin(Phi).*sin(Theta);
Z=E.*cos(Theta);

surf(X, Y, Z,'EdgeColor','none');
hold on
surf(reflector_X, reflector_Y, reflector_Z)
xlabel('X');
ylabel('Y');
zlabel('Z');
ylim([-1 2.5])
title('3D radiation pattern θ_0=90^o');

