theta=linspace(0,2*pi,1000);
N_x=24;
N_y=16;
kd=pi;

%% theta_0=0

% theta_0=0, phi_0=0

psi_x=kd*sin(theta);

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=16;
E=absA_x*absA_y;

tiledlayout(2,2);
nexttile
polarplot(theta, E);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern [θ_0, φ_0]=[0^o,0^o]');
rlim([0 384])
nexttile

% theta_0=0, phi_0=30

psi_x=kd*(sqrt(3)/2)*sin(theta);
psi_y=kd*(1/2)*sin(theta);

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x.*absA_y;

polarplot(theta, E);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern [θ_0, φ_0]=[0^o,30^o]');
rlim([0 384]) 
nexttile

% theta_0=0, phi_0=60

psi_x=kd*(1/2)*sin(theta);
psi_y=kd*(sqrt(3)/2)*sin(theta);

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x.*absA_y;

polarplot(theta, E);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern [θ_0, φ_0]=[0^o,60^o]');
rlim([0 384]) 
nexttile

% theta_0=0, phi_0=90

psi_y=kd*sin(theta);

absA_x=24;
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x*absA_y;

polarplot(theta, E);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern [θ_0, φ_0]=[0^o,90^o]');
rlim([0 384]) 

%% theta_0=30

% theta_0=30, phi_0=0

psi_x=kd*sin(theta)-pi/2;

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=16;
E=absA_x*absA_y;

tiledlayout(2,2);
nexttile
polarplot(theta, E);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern [θ_0, φ_0]=[30^o,0^o]');
rlim([0 384]) 
nexttile

% theta_0=30, phi_0=30

psi_x=kd*(sqrt(3)/2)*sin(theta)-sqrt(3)*pi/4;
psi_y=kd*(1/2)*sin(theta)-pi/4;

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x.*absA_y;

polarplot(theta, E);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern [θ_0, φ_0]=[30^o,30^o]');
rlim([0 384]) 
nexttile

% theta_0=30, phi_0=60

psi_x=kd*(1/2)*sin(theta)-pi/4;
psi_y=kd*(sqrt(3)/2)*sin(theta)-sqrt(3)*pi/4;

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x.*absA_y;

polarplot(theta, E);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern [θ_0, φ_0]=[30^o,60^o]');
rlim([0 384]) 
nexttile

% theta_0=30, phi_0=90

psi_y=kd*sin(theta)-pi/2;

absA_x=24;
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x*absA_y;

polarplot(theta, E);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern [θ_0, φ_0]=[30^o,90^o]');
rlim([0 384])

%% theta_0=60

% theta_0=60, phi_0=0

psi_x=kd*sin(theta)-sqrt(3)*pi/2;

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=16;
E=absA_x*absA_y;

tiledlayout(2,2);
nexttile
polarplot(theta, E);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern [θ_0, φ_0]=[60^o,0^o]');
rlim([0 384]) 
nexttile

% theta_0=60, phi_0=30

psi_x=kd*(sqrt(3)/2)*sin(theta)-3*pi/4;
psi_y=kd*(1/2)*sin(theta)-sqrt(3)*pi/4;

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x.*absA_y;

polarplot(theta, E);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern [θ_0, φ_0]=[60^o,30^o]');
rlim([0 384])
nexttile

% theta_0=60, phi_0=60

psi_x=kd*(1/2)*sin(theta)-sqrt(3)*pi/4;
psi_y=kd*(sqrt(3)/2)*sin(theta)-3*pi/4;

absA_x=abs(sin(N_x*psi_x/2)./sin(psi_x/2));
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x.*absA_y;

polarplot(theta, E);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern [θ_0, φ_0]=[60^o,60^o]');
rlim([0 384])
nexttile

% theta_0=60, phi_0=90

psi_y=kd*sin(theta)-sqrt(3)*pi/2;

absA_x=24;
absA_y=abs(sin(N_y*psi_y/2)./sin(psi_y/2));
E=absA_x*absA_y;

polarplot(theta, E);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern [θ_0, φ_0]=[60^o,90^o]');
rlim([0 384])

