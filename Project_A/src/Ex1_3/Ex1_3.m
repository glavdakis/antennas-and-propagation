%% linear interpolation 

% A=4

A=4;
I2=(A-1)/4+1;
I3=(A-1)/4+I2;
I4=(A-1)/4+I3;
I5=A;

p=[I2 I3 I4 I5];
theta = linspace(0, 2*pi, 361);
absA=Calc_absA(p);
ratio(1)=20*log10(absA(60)/absA(91));

tiledlayout(2,2);
nexttile
polarplot(theta, absA);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern A=4');
nexttile

% A=8

A=8;
I2=(A-1)/4+1;
I3=(A-1)/4+I2;
I4=(A-1)/4+I3;
I5=A;

p=[I2 I3 I4 I5];
absA=Calc_absA(p);
ratio(2)=20*log10(absA(57)/absA(91));

polarplot(theta, absA);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern A=8'); 
nexttile

% A=16

A=16;
I2=(A-1)/4+1;
I3=(A-1)/4+I2;
I4=(A-1)/4+I3;
I5=A;

p=[I2 I3 I4 I5];
absA=Calc_absA(p);
ratio(3)=20*log10(absA(54)/absA(91));

polarplot(theta, absA);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern A=16'); 
rlim([0 85])
nexttile

% A=24

A=24;
I2=(A-1)/4+1;
I3=(A-1)/4+I2;
I4=(A-1)/4+I3;
I5=A;

p=[I2 I3 I4 I5];
absA=Calc_absA(p);
ratio(4)=20*log10(absA(53)/absA(91));

polarplot(theta, absA);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern A=24');
rlim([0 125])

%% linear interpolation and fluctuations

% Α=4

A=4;
I2=(A-1)/4+1;
I3=(A-1)/4+I2;
I4=(A-1)/4+I3;
I5=A;

I2_=I2*0.9;
I4_=I4*1.1;

p=[I2_ I3 I4_ I5];
theta = linspace(0, 2*pi, 361);
absA=Calc_absA(p);
ratio(1)=20*log10(absA(47)/absA(91));

tiledlayout(2,2);
nexttile
polarplot(theta, absA);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern A=4');
rlim([0 25.3])
nexttile

% Α=8

A=8;
I2=(A-1)/4+1;
I3=(A-1)/4+I2;
I4=(A-1)/4+I3;
I5=A;

I2_=I2*0.9;
I4_=I4*1.1;

p=[I2_ I3 I4_ I5];
absA=Calc_absA(p);
ratio(2)=20*log10(absA(45)/absA(91));

polarplot(theta, absA);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern A=8'); 
rlim([0 45.7])
nexttile

% A=16

A=16;
I2=(A-1)/4+1;
I3=(A-1)/4+I2;
I4=(A-1)/4+I3;
I5=A;

I2_=I2*0.9;
I4_=I4*1.1;

p=[I2_ I3 I4_ I5];
absA=Calc_absA(p);
ratio(3)=20*log10(absA(64)/absA(91));

polarplot(theta, absA);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern A=16'); 
rlim([0 86.5])
nexttile

% A=24

A=24;
I2=(A-1)/4+1;
I3=(A-1)/4+I2;
I4=(A-1)/4+I3;
I5=A;

I2_=I2*0.9;
I4_=I4*1.1;

p=[I2_ I3 I4_ I5];
absA=Calc_absA(p);
ratio(4)=20*log10(absA(64)/absA(91));

polarplot(theta, absA);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Vertical pattern A=24');
rlim([0 127.3])
