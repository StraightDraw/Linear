# 5.4 Diagonalization

The diagonalization of a matrix $A$, provided it exists, can be written as

    $$A = PDP^{-1}$$

where $D$ is a diagonal matrix of eigenvalues and $P$ has columns which are the  corresponding eigenvectors.

## Example

Diagonalize the matrix $A$.

$$A = \left[\begin{array}{rrr}-3&-7&-2\\0&-2&0\\1&7&0\\\end{array}\right] $$

### Finding the eigenvalues and matrix $D$

As we found in section 5.2, the *characteristic polynomial* is found by calculating the determinant of the matrix $A-\lambda I$.

A = [-3 -7 -2 ; 0 -2 0 ; 1 7 0 ];
syms x
y = charpoly(A,x)

The candidate factors are $x \pm 1, x \pm 2, x \pm 4$. Let's try $x=\pm 1$ fist.

[r,q] = polynomialReduce(y,x-1)

[r,q] = polynomialReduce(y,x+1)

With $x+1$ confirmed as a factor, we can see the factors have to be:

$$z = (x+1)(x+2)^2$$



z = (x+1)*(x+2)^2

expand(z)

This means that we have two eigenvalues and can write down the diagonal matrix $D$ for our diagonalization.

$$D = \left[\begin{array}{rrr}-1&0&0\\0&-2&0\\0&0&-2\end{array}\right]$$

D = [-1 0 0 ; 0 -2 0 ; 0 0 -2 ]

### Finding the eigenvectors and the matrix $P$

rref([A + 1 * eye(3), zeros(3,1)])

v1 = [ -1 ; 0 ; 1]

rref([A + 2 * eye(3), zeros(3,1)])

v21 = [ -2 ; 0 ; 1];
v22 = [-7 ; 1 ; 0];

To test the vectors, we muliply.

A * v1

A * v21

A * v22

This means we have found and confirmed the eigenvectors for $A$, and we can construct the matrix $P$. We only need to ensure that they are in the same order as their associated eigenvalues are in $D$.

$$$$

P = [v1, v21, v22]

P * D * inv(P)

A

We can also test with a conditional statement.

A == P * D * inv(P)

Thus, $A$ is diagonalizable using the invertible matrix

$$P = \left[\begin{array}{rrr}-1&-2&-7\\0&0&1\\1&1&0\\\end{array}\right]$$

and the diagonal matrix

$$D = \left[\begin{array}{rrr}-1&0&0\\0&-2&0\\0&0&-2\end{array}\right]$$