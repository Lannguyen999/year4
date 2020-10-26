[u,v] = meshgrid(linspace(0, 2*pi,50), linspace(0,pi,50));
r = 3;
x = r.*cos(u).*sin(v);
y = r.*sin(u).*sin(v);
z = r.*cos(v);
mesh(x,y,z);
axis equal;

