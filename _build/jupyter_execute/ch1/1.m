A=[2 0 -10 ; 0 0 -2 ; 1 1 -3]

v=[-4 ; 2 ; 3]

B=[a,v]

B(2,:)

B([2 3],:)=B([3 2],:)

C=B;
C([1 2 3],:)=C([3 2 1],:)

b=B

b(1,:)=.5*b(1,:)

b(2,:)=b(2,:)-b(1,:)

b(2,:)=b(2,:)+b(3,:)

b(3,:)=b(3,:)/-2

b(1,:)=b(1,:)+5*b(3,:)

x=b(:,4)

A*x
v

A*x == v

rref([A,v])
