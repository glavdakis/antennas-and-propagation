%% Task a 

d=linspace(0, 3, 700);

[R_21m,X_21m]=Mutual_Impedance(d);

plot(d,R_21m)
hold on
xlabel('d/λ');
ylabel('Mutual impedance Z_{21m} (ohms)');
title('Two parallel dipoles');
yticks(-40:10:80);
plot(d,X_21m)
legend('R_{21m}','X_{21m}','AutoUpdate','off')
yline(0,"--")
hold off

%% Task b

d=3/8;
[R_m_b,X_m_b]=Mutual_Impedance(d);
[R_m_c,X_m_c]=Mutual_Impedance(2*d);

a=73.1+1j*42.5;
b=R_m_b+1j*X_m_b;
c=R_m_c+1j*X_m_c;

i=-b/(c+a);
Zin=a+2*b*i;

phi=linspace(0, 2*pi, 700); 
E=abs(1+i*2*cos((3*pi/4)*sin(phi)));

polarplot(phi, E);
title('Horizontal pattern');
rlim([0 1.81]) 

%% Task c

d=linspace(0, 1, 1000);
Z0=50;

[R_m_b,X_m_b]=Mutual_Impedance(d);
[R_m_c,X_m_c]=Mutual_Impedance(2*d);

a=73.1+1j*42.5;
b=R_m_b+1j*X_m_b;
c=R_m_c+1j*X_m_c;

i=-b./(c+a);
Zin=a+2*b.*i;
abs_Gamma=abs((Zin-Z0)./(Zin+Z0));

plot(d, abs_Gamma)
ylim([0 1.2])
xlabel('d/λ');
ylabel('|Γ|');
title('|Γ| στην είσοδο της κεραίας');
yline(0.3 ,"--")
grid on

indices=find(abs_Gamma < 0.3);
best_d=d(indices);

%% Task d

dist=linspace(0, 1, 100);
h=linspace(0, 1, 100);
[D, H]=meshgrid(dist, h);
Z0=50;

[R_m_b,X_m_b]=Mutual_Impedance(D);
[R_m_c,X_m_c]=Mutual_Impedance(2*D);
[R_m_d,X_m_d]=Mutual_Impedance(2*H);
[R_m_e,X_m_e]=Mutual_Impedance(sqrt((2*H).^2+D.^2));
[R_m_f,X_m_f]=Mutual_Impedance(sqrt((2*H).^2+(2*D).^2));

a=73.1+1j*42.5;
b=R_m_b+1j*X_m_b;
c=R_m_c+1j*X_m_c;
d=R_m_d+1j*X_m_d;
e=R_m_e+1j*X_m_e;
f=R_m_f+1j*X_m_f;

i=(e-b).*(d+f+a+c)./((a+c).^2-(d+f).^2);
ii=(-(d+f).*i+b-e)./(a+c);

Zin=2*i.*b+2*e.*ii-d+a;
abs_Gamma=abs((Zin-Z0)./(Zin+Z0));

figure
surf(D, H, abs_Gamma,'EdgeColor','none')
colormap("winter");
xlabel('d/λ');
ylabel('h/λ');
zlabel('|Γ|');
title('|Γ| στην είσοδο της κεραίας');
grid on;

figure
lim=abs_Gamma(abs_Gamma < 0.3);
contour(D, H, abs_Gamma, lim)
xlabel('d/λ');
ylabel('h/λ');
title('Περιοχές τιμών των d και h ώστε |Γ|<0.3');
colorbar;
grid on;






