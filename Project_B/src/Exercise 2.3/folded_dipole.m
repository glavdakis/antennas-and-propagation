lambda=3; % wavelength 
d=lambda/50; % distance between pwo parallel conductors
l=0.5*lambda; % length of folded dipole
N=4; % number of wires 
r=lambda/400; % wire's radius

fid=fopen('folded_dipole1.nec', 'w');
fprintf(fid, 'CM Folded Dipole Antenna, d=lambda/50\n'); % start comment
fprintf(fid, 'CE\n'); % end comment

x1=[0, d, 0, d]; % x-coordinate of the wire's starting point
x2=[0, d, d, 0]; % x-coordinate of the wire's starting point

z1=[-lambda/2, lambda/2, lambda/2, -lambda/2]; % z-coordinate of the wire's end point
z2=[lambda/2, -lambda/2, lambda/2, -lambda/2]; % z-coordinate of the wire's end point

for i=1:N
    fprintf(fid, 'GW %d %d %f %f %f %f %f %f %f\n', i, 13, x1(i), 0, z1(i), x2(i), 0, z2(i), r);
end

fprintf(fid, 'GE 0\n'); % free space
fprintf(fid, 'EX 0 1 7 0 1 0\n'); % exitation
fprintf(fid, 'FR 0 1 0 0 100 0\n'); % frequency 
fprintf(fid, 'EN\n'); % end NEC file

fclose(fid); % close file