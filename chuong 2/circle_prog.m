function[area, perimeter] = circle_prog(r)
    area  = pi * r * r;
    perimeter = 2*pi*r;
    u = linspace(0,2*pi,50);
    x = r.*cos(u);
    y = r.*sin(u);
    plot(x,y,'red');
    title('Hinh tron voi ban kinh r');
    axis equal;
    grid on;