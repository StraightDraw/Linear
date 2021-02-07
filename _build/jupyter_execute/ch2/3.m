x = [-1 ; 1 ; 5]
y = [ 1 ; 3 ; -1]
dot(x,y)

r1 = A(1,:)
r2 = A(2,:)
r3 = A(3,:)
x = [-2 ; 1 ; 5 ; 0]

b = [ dot(r1,x) ; dot(r2,x) ; dot(r3,x) ]

b = A * x

rref([A,b])
