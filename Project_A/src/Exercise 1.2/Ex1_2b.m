% theta_0=0;

theta=linspace(0,pi,500);
kd=pi/2;
theta_0=0;

E=2*abs(sin(kd*sin(theta)+theta_0));

tiledlayout(2,2);
nexttile
polarplot(theta, E);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern θ_0=0^ο');
rticks([0 1 2])
nexttile

% theta_0=30;

theta_0=pi/6;

E=2*abs(sin(kd*sin(theta)+theta_0));

polarplot(theta, E);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern θ_0=30^ο');
rticks([0 1 2])
nexttile

% theta_0=60;

theta_0=pi/3;

E=2*abs(sin(kd*sin(theta)+theta_0));

polarplot(theta, E);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern θ_0=60^ο');
rticks([0 1 2])
nexttile

% theta_0=90;

theta_0=pi/2;

E=2*abs(sin(kd*sin(theta)+theta_0));

polarplot(theta, E);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern θ_0=90^ο');
rticks([0 1 2])
