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

#### Testing factors for zero remainder using `polynomialReduce` function

MATLAB's `polynomialReduce` function divides one polynomial by another of lesser degree returning the remainder. This allows us to test likely factors quickly. Here, the candidate factors are $x \pm 1, x \pm 2, x \pm 4$. Let's try $x=\pm 1$ fist.

````{tip}
We can ask the `polynomialReduce` function to return both quotient and remainder.
````

[r,q] = polynomialReduce(y,x-1)

The remainder is not zero which means $x-1$ is not a factor of $y$.

[r,q] = polynomialReduce(y,x+1)

With $x+1$ confirmed as a factor, we can see the factors have to be:

$$z = (x+1)(x+2)^2$$

z = (x+1)*(x+2)^2

We would like to test our factorization by expanding.

expand(z)

#### Matrix $D$

The diagonal matrix we seek must include all the eigenvalues listed as many times as indicated by their multiplicity.

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

## Exercises

Determine if the following matrices are diagonlizable. If so, determine an invertible matrix $C$ and diagonal matrix $D$ such that

$$M = CDC^{-1}$$

````{panels}
HW Question 1
^^^
$$A = \left[\begin{array}{rrr}-4&3.5&-3\\-6&6&-6\\1&-0.5&0\\\end{array}\right]$$

```{dropdown} Solution
$$C = \left[\begin{array}{rrr}1&-2&-1\\2&0&-2\\1&2&0\end{array}\right]$$
$$D = \left[\begin{array}{rrr}0&0&0\\0&-1&0\\0&0&3\end{array}\right]$$
Answers vary.
```

---
HW Question 2
^^^
$$B = \left[\begin{array}{rrr}3&0&4\\2&-7&20\\1&-3&9\end{array}\right]$$

```{dropdown} Solution
$$C = \left[\begin{array}{rrr}-2&-2&-1\\2&-2&3\\1&-1&1\end{array}\right]$$
$$D = \left[\begin{array}{rrr}1&0&0\\0&5&0\\0&0&-1\\\end{array}\right]$$
Answers vary.
```