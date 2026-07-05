%% theta_0=0

theta=0;
phi=[0 pi/6 pi/3 pi/2];
theta_x=4;
theta_y=6.05;

theta_h=1./(cos(theta)*sqrt(cos(phi).^(2).*theta_x.^(-2)+sin(phi).^(2).*theta_y.^(-2)));
psi_h=1./sqrt(sin(phi).^(2).*theta_x.^(-2)+cos(phi).^(2).*theta_y.^(-2));

D=32400./(theta_h.*psi_h);
D_dB=10*log10(D);

%% theta_0=30

theta=pi/6;
phi=[0 pi/6 pi/3 pi/2];
theta_x=[5 5 5 4];
theta_y=[6.05 7.8 7.8 7.8];

theta_h=1./(cos(theta)*sqrt(cos(phi).^(2).*theta_x.^(-2)+sin(phi).^(2).*theta_y.^(-2)));
psi_h=1./sqrt(sin(phi).^(2).*theta_x.^(-2)+cos(phi).^(2).*theta_y.^(-2));

D=32400./(theta_h.*psi_h);
D_dB=10*log10(D);

%% theta_0=60

theta=pi/3;
phi=[0 pi/6 pi/3 pi/2];
theta_x=[9 9 5 4];
theta_y=[6.05 7.8 13 13];

theta_h=1./(cos(theta)*sqrt(cos(phi).^(2).*theta_x.^(-2)+sin(phi).^(2).*theta_y.^(-2)));
psi_h=1./sqrt(sin(phi).^(2).*theta_x.^(-2)+cos(phi).^(2).*theta_y.^(-2));

D=32400./(theta_h.*psi_h);
D_dB=10*log10(D);






