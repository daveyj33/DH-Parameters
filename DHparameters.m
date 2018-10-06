a1=0; a2=0; a3=0;
t1=0; t2=0; t3=0;
r1=0; r2=1; r3=1;
d1=.1; d2=0; d3=0;


h1=[cos(t1) -sin(t1)*cos(a1) sin(t1)*sin(a1) r1*cos(t1);sin(t1) cos(t1)*cos(a1) -cos(t1)*sin(a1) r1*sin(t1);0 sin(a1) cos(a1) d1; 0 0 0 1];
h2=[cos(t2) -sin(t2)*cos(a2) sin(t2)*sin(a2) r2*cos(t2);sin(t2) cos(t2)*cos(a2) -cos(t2)*sin(a2) r2*sin(t2);0 sin(a2) cos(a2) d2; 0 0 0 1];
h3=[cos(t3) -sin(t3)*cos(a3) sin(t3)*sin(a3) r3*cos(t3);sin(t3) cos(t3)*cos(a3) -cos(t3)*sin(a3) r3*sin(t3);0 sin(a3) cos(a3) d3; 0 0 0 1];

ho3=[h1*h2*h3];

x=[0 h1(1,4) h2(1,4) ho3(1,4)];
y=[0 h1(2,4) h2(2,4) ho3(2,4)];
z=[0 h1(3,4) h2(3,4) ho3(3,4)];

plot3(x,y,z,'o-')