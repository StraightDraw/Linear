A = [  4   -18   -21 ;
      -4    30    33 ;
       0     1     1 ]

[A,zeros(3,1)]

rref([A,zeros(3,1)])

x = [ 3/4 ; -1 ; 1]

A * (5 * x) 

B = [ -1 4 1 ; -3 12 7 ; 0 1 -2 ]
rref([B, zeros(3,1)])

C = [  0     0     1    -2 ;
     -12    43    27     9 ;
      -2     7     4     1 ]
[C , zeros(3,1)]
c = rref([C , zeros(3,1)])

x = -c(:,4);
x(4) = 1

A
rref(A)

v1 = A(:,1)
v2 = A(:,2)