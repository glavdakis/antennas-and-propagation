lambda=0.3; % wavelength 
d=lambda/20; % distance between cone connection points
l=0.5*lambda; % length of each wire
theta_0=pi/6; % half angle of the cone
N=6; % number of wires per cone
r=lambda/400; % wire's radius

radius=l*sin(theta_0); % radius of the circle formed by wire ends
z_up=d/2; % z-coordinate of up cone connection point
z_low=-d/2; % z-coordinate of low cone connection point

fid=fopen('double_discone.nec', 'w');
fprintf(fid, 'CM Double Discone Antenna\n'); % start comment
fprintf(fid, 'CE\n'); % end comment

% wires for the up cone
for i=0:N-1
    theta=2*pi*i/N; % angle for wire position on the circle
    x=radius*cos(theta);
    y=radius*sin(theta);
    z=z_up+l*cos(theta_0);
    fprintf(fid, 'GW %d %d %f %f %f %f %f %f %f\n', i+1, 7, 0, 0, z_up, x, y, z, r);
end

% wires for the low cone
for i=0:N-1
    theta=2*pi*i/N; % angle for wire position on the circle
    x=radius*cos(theta);
    y=radius*sin(theta);
    z=z_low-l*cos(theta_0);
    fprintf(fid, 'GW %d %d %f %f %f %f %f %f %f\n', N+i+1, 7, 0, 0, z_low, x, y, z, r);
end

fprintf(fid, 'GW %d %d %f %f %f %f %f %f %f\n', 13, 1, 0, 0, z_low, 0, 0, z_up, r); % wire between connection points

fprintf(fid, 'GE 0\n'); % free space
fprintf(fid, 'EX 0 13 1 0 1 0\n'); % exitation
fprintf(fid, 'FR 0 1 0 0 1000 0\n'); % frequency 
fprintf(fid, 'EN\n'); % end NEC file

fclose(fid); % close file

