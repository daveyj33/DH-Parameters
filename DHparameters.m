clc; clear;
hold on;
a1=pi/2;ac=pi/2; a2=0; a3=0; % the angle alpha between z_i1 and z_i measured about x_i 
t1=-1*pi/3; tc=t1; t2=-pi/4; t3=-pi/4; % the angle theta between x_i1 and x_i measured about z_i1 
r1=0;rc=.1; r2=.25; r3=.25; %  distance along x_i from O_i to the intersection of the x_i and z_i1 axes.
d1=.1; dc=0; d2=0; d3=0; % distance along z_i1 from O_i1 to the intersection of the x_i and z_i1 axes.

h1=[cos(t1) -sin(t1)*cos(a1) sin(t1)*sin(a1) r1*cos(t1);sin(t1) cos(t1)*cos(a1) -cos(t1)*sin(a1) r1*sin(t1);0 sin(a1) cos(a1) d1; 0 0 0 1];
hc=[cos(tc) -sin(tc)*cos(ac) sin(tc)*sin(ac) rc*cos(tc);sin(tc) cos(tc)*cos(ac) -cos(tc)*sin(ac) rc*sin(tc);0 sin(ac) cos(ac) d1; 0 0 0 1];
h2=[cos(t2) -sin(t2)*cos(a2) sin(t2)*sin(a2) r2*cos(t2);sin(t2) cos(t2)*cos(a2) -cos(t2)*sin(a2) r2*sin(t2);0 sin(a2) cos(a2) d2; 0 0 0 1];
h3=[cos(t3) -sin(t3)*cos(a3) sin(t3)*sin(a3) r3*cos(t3);sin(t3) cos(t3)*cos(a3) -cos(t3)*sin(a3) r3*sin(t3);0 sin(a3) cos(a3) d3; 0 0 0 1];
ho1=[h1];
hoc=[hc];
ho2=[hc*h2];
ho3=[hc*h2*h3];

x=[0 ho1(1,4) hoc(1,4) ho2(1,4) ho3(1,4)]
y=[0 ho1(2,4) hoc(2,4) ho2(2,4) ho3(2,4)]
z=[0 ho1(3,4) hoc(3,4) ho2(3,4) ho3(3,4)]
axis equal
plot3(x,y,z,'ob-')
