# 5.1 Eigenvalues and Eigenvectors

Eigenvector
: An eigenvector of $A$ is a nonzero vector $\vec v$ in $\mathbb R^n$ such that $A\vec v = \lambda \vec v$, for some scalar $\lambda$.

Eigenvalue
: An eigenvalue of $A$ is a scalar $\lambda$ such that the equation $A\vec v = \lambda \vec v$ has a nontrivial solution.

**Terminology.** If $A\vec v = \lambda \vec v$ for some vector $\vec v\neq \vec 0$, we say that $\lambda$ is the eigenvalue for $\vec v$, and that $\vec v$ is an eigenvector for $\lambda$.

## Determining if a vector is an eigenvector of a matrix

### Example 1

Determine if the vector $\vec v$ is an eigenvector of the matrix $A$ where

$$A = \left[\begin{array}{rrr}15&0&24\\9&2&18\\-8&0&-13\end{array}\right]$$

and

$$\vec v = \left[\begin{array}{r}2\\3\\-1\\\end{array}\right]$$

**Solution.** The question is whether the product $A\vec v$ is equal to a scalar multiple of $\vec v$, so we should just multiply and check.

A = [15 0 24 ; 9 2 18 ; -8 0 -13 ];
v = [ 2 ; 3 ; -1 ]

A * v

By inspection, we see that $A\vec v$ is not a scalar multiple of $\vec v$, so $\vec v$ is not an eigenvector of $A$.


### Example 2

Determine if the vector $\vec y$ is an eigenvector of the matrix $A$ where

$$B = \left[\begin{array}{rrrr}-4&16&-14&22\\-6&20&-12&24\\3&-8&9&-11\\4&-12&8&-14\\\end{array}\right]$$

and

$$\vec y = \left[\begin{array}{r}0\\-1\\0\\1\end{array}\right]$$

**Solution.** Same question as above, so we multiply and check.

B = [-4 16 -14 22 ; -6 20 -12 24 ; 3 -8 9 -11 ; 4 -12 8 -14 ];
y = [1 ; -1 ; 0 ; 1 ]

B*y

Clearly, $B\vec y = 2\vec y$, so $2$ is an eignevalue of matrix $B$, and $y$ is its associated eigenvector.

## Finding eignevalues

The *eignevalues* of a matrix $A$ are possible values $\lambda$ such that

$$A \vec v=\lambda \vec v$$

which, after some algebra, is equivalent to solving a homogeneous set of equations.

$$\begin{align} A \vec v &= \lambda \vec v \\ \iff \hspace{5mm}A \vec v - \lambda \vec v &= \vec 0 \\ \iff \hspace{5mm}A \vec v - \lambda I \vec v &= \vec 0 \\ \iff \hspace{5mm} (A - \lambda I) \vec v &= \vec 0\end{align}$$

This means we can test eigenvalues by creating the matrix

$$A - \lambda I$$

and finding whether its *null space* has any nonzero vectors in it.

### Example

Determine if $\lambda = 3$ is an eigenvalue for the matrix $A$ where

$$A = $$

A = [3 0 0 ; -1 -13 15 ; -1 -12 14 ];
a = A - 3*eye(3)

To see if the null space is empty, we row-reduce the augmented matrix.

rref([a,zeros(3,1)])

Because the homogeneous system is consistent, we know there are non-trivial solutions which means there are non-zero vectors in the null space of $A-\lambda I$. Thus, $\lambda = 3$ is an eigenvalue.

### Example 3

To determine the associated eigenvector(s) once we know an eigenvalue, we write the solutions to the homogeneous system in vector form.

$$\begin{align}x_1 &= -x_3 \\ x_2 &= x_3 \\  x_3 &\text{ is free}\end{align} \implies \vec v = \left[\begin{array}{r}-1\\1\\1\\\end{array}\right]$$

The vector $\vec v$ is an eigenvector of $A$ associated with the eigenvalue $\lambda = 3$, which can be verified by multiplication.

v = [ -1 ; 1 ; 1 ]

A * v

We are testing the specific equality:

A * v == 3 * v

Because equality holds (all 1's in array), we know that we have found a eigenvalue-eigenvector pair.