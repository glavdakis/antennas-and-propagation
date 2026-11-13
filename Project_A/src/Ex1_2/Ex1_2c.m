theta_0=linspace(0, pi, 181);
angle_theta_0=theta_0/pi; % normalized theta_0
phi=linspace(0, pi, 181);
angle_phi=phi/pi; % normalized phi
kd=pi/4;

for z=1:length(theta_0)
    for j=1:length(phi)

E(z,j)=2*abs(sin(kd*sin(phi(j))+theta_0(z)));

    end
end     

Emax=max(E(:));
[row_index, column_index]=find(E == Emax);
best_angle_theta_0=angle_theta_0(row_index);
best_angle_phi=angle_phi(column_index);




