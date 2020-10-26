x = (-2: 0.2: 2)
y = (-1: 0.1: 1)'
v = ones(length(x),1)
X = v*x
Y = y*v'
f = X.^2 + Y.^2
mesh(x,y,f)
mxf = max(max(f))
mif = min(min(f))

