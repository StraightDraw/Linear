# 5.2 The Characteristic Polynomial

Characteristic Polynomial
: For an $n \times n$ matrix $A$, the *characteristic polynomial* of $A$ is

$$p(\lambda) = \det \left(A - \lambda I \right)$$

## Section 1



## Finding eignevalues

The *eignevalues* of a matrix $A$ are possible values $\lambda$ such that

$$A \vec v=\lambda \vec v$$

which, after some algebra, is equivalent to solving a homogeneous set of equations.

$$\begin{align} A \vec v &= \lambda \vec v \\ \iff \hspace{5mm}A \vec v - \lambda \vec v &= \vec 0 \\ \iff \hspace{5mm}A \vec v - \lambda I \vec v &= \vec 0 \\ \iff \hspace{5mm} (A - \lambda I) \vec v &= \vec 0\end{align}$$

## Example: Eigenvalues and Eigenvectors

Find the eigenvalues and associated eigenvectors of matrix $A$.

$$A = \left[\begin{array}{rrr}3&0&0\\2&15&-14\\2&12&-11\\\end{array}\right]$$

### Example 1a: Find the characteristic polynomial of matrix $A$

The first step in finding the eigenvalues of matrix $A$ is determining its characteric polynomial which means finding the determinant of $A-\lambda I$.

$$\begin{align}
\det \left(A - \lambda I\right) &= 
\det \left( \left[\begin{array}{rrr}3&0&0\\2&15&-14\\2&12&-11\end{array}\right]-\lambda\left[\begin{array}{rrr}1&0&0\\0&1&0\\0&0&1\end{array}\right]\right)\\
&=\det \left( \left[\begin{array}{rrr}3&0&0\\2&15&-14\\2&12&-11\end{array}\right]-\left[\begin{array}{rrr}\lambda&0&0\\0&\lambda&0\\0&0&\lambda\end{array}\right]\right)\\
&=\det \left( \left[\begin{array}{rrr}3-\lambda&0&0\\2&15-\lambda&-14\\2&12&-11-\lambda\end{array}\right]\right)
\end{align}$$

We can expand across the top row which has two zero's in it.

$$\det(A-\lambda I) = (3-\lambda)\det\left(
\left[\begin{array}{rr}15-\lambda&-14\\12&-11-\lambda\end{array}\right]\right)
-(0)+(0)$$

Since the

$$\begin{align}\det\left( \left[\begin{array}{rr}15-\lambda&-14\\12&-11-\lambda\end{array}\right] \right) &= (15-\lambda)(-11-\lambda)-(12)(-14)\\
&= \lambda^2 +11\lambda -15\lambda - 165 + 168\\
&= \lambda^2 - 4\lambda +3 \end{align}$$

we know the characteristic polynomial is the product

$$\begin{align}p(\lambda)&=(3-\lambda)(\lambda^2 - 4\lambda +3)\\
&=-\lambda^3 +4\lambda^2 -3\lambda +3\lambda^2 - 12 \lambda +9\\
&= -\lambda^3 +7\lambda^2 -15 \lambda + 9 \end{align}$$

We can confirm using the MATLAB `charpoly` function.

A = [3 0 0 ; 2 15 -14 ; 2 12 -11 ];
charpoly(A)

### Example 1b: Finding the eigenvalues

The coefficients from the `charpoly` function match our work if we mulitply through the expression by $-1$ which will be mathematically correct since the eigenvalues of the matrix are the *roots* of the characteristic polynomial. In fact, it was a waste of time algebraically to write $p(\lambda)$ in expanded form since we actually need to set it equal to zero and factor it.

$$\begin{align}p(\lambda)&=(3-\lambda)(\lambda^2 - 4\lambda +3)\\
&=-(\lambda-3)(\lambda -3)(\lambda -1)\\
&= -(\lambda-3)^2(\lambda -1) \end{align}$$

We set the characteristic polynomial equal to zero and solve.

$$-(\lambda-3)^2(\lambda -1) = 0$$

We have two eigenvalues.

$$\lambda=3 \text{ and } \lambda=1$$

The multiplicity of the root $\lambda=3$ is two. Eigenvalues also have multiplicties which match the multiplicities of their corresponding roots. Since the multiplicity of the $\lambda =3$ eigenvalue is two, we expect two different eigenvectors to be associated with it.

### Example 1c: Finding the eigenvectors for $\lambda = 1$

As shown in section 1, to find an eigenvector related to $\lambda = 1$, we must find the solutions (in vector form) to the homogeneous system of equations:

$$A - \lambda I = 0$$

Substituting $\lambda = 1$:

$$A - I = 0$$

We actually want to row reduce the augmented matrix $[A-I |\vec 0]$.

A - eye(3)

rref([A-eye(3),zeros(3,1)])

We can see that $x_3$ is a free variable and that

$$\begin{align}x_1 &= 0\\x_2 &= x_3\end{align}$$

So $\vec v$ is an eigenvector.

$$\vec v =\left[\begin{array}{r}0\\1\\1\\\end{array}\right]$$

We can test by multiplying the matrix by the eigenvector.

v = [0 ; 1 ; 1 ];
A*v

We can also execute a code block with a conditional to check. Since

```
A*V == 1*v
```

evaluates `True`, we know that $\lambda = 1$ is eigenvalue of $A$.



### Example 1d: Finding the eigenvectors for $\lambda = 3$

Substituting $\lambda = 3$ into $A - \lambda I = \vec 0$

$$A - 3I = 0$$

We actually want to row reduce the augmented matrix $[A-3I |\vec 0 ]$.

A - 3 * eye(3)

Notice the rows of the matrix after the subtraction. This is typical when evaluating $A-\lambda I$: having a row that is a scalar multiple of another.

rref([A - 3*eye(3),zeros(3,1)])

$$x_1 = -6x_2 + 7x_3$$

A solution vector $\vec v$ has the form

$$\vec v = \left[\begin{array}{r}-6\\1\\0\end{array}\right]x_2 + \left[\begin{array}{r}7\\0\\1\end{array}\right]x_3$$

where $x_2,x_3$ are scalars. This means we have two eigenvectors associated with the eigenvalue $\lambda = 3$ which makes sense. The $\lambda =3$ eigenvalue has *muliplicity* 2. Let's verify both vectors are eigenvectors. In MATLAB, the `|` symbol means `AND`. The code block below will evaluate as `True` if and only if both $\vec v_1$ and $\vec v_2$ are eigenvectors of $A$.

A * v1 == 3*v1 |  A * v2 == 3*v2

For clarity, it helps to see the multiplication steps.

v1 = [-6 ; 1 ; 0]
A*v1

v2 = [7 ; 0 ; 1]
A*v2

Either way, we now know all three unique eigenvectors and the two eigenvalues for $A$.

## Example 2: Find eigenvalues and eigenvectors with MATLAB

Find all the eigenvalues and eigenvectors for matrix $B$.

$$B = \left[\begin{array}{rrrr}-14&-78&26&66\\-2&-12&10&10\\6&27&-4&-24\\-9&-48&21&41\\\end{array}\right] $$

The `charpoly` function in MATLAB will produce the coefficients of the characteristic polynomial.

B = [-14 -78 26 66 ; -2 -12 10 10 ; 6 27 -4 -24 ; -9 -48 21 41 ];
charpoly(B)

However, we need to use the `syms` function from the Symbolic Math Toolbox to have MATLAB do the work for us. If you downloaded the software, you can repeat the process and select the correct toolbox. The download will be quick - MATLAB will only download and install the new packages, not the whole program. If you're working in MATLAB online, you should not need to do anything different.

syms x
y = charpoly(B,x)

### Using `polynomialReduce` function to determine fully factored form of characteristic polynomial

The function `polynomialReduce` returns the remainder when one polynomial is divided by another.

polynomialReduce(y,x)

If we want to capture the quotient, too, we need to grab both the quotient and remainder of the division as shown.

[r,q] = polynomialReduce(y,x)

We know that any factors that divide $q(x)$ evenly must be of the form:

$$\begin{align} x&\pm 1 \\ x&\pm 2 \\ x&\pm 4 \\ x&\pm 5 \\ x&\pm 8  \end{align}$$

To experiment, let's see if the factor $x+5$ dvides $q(x)$ evenly.

[r, q2] = polynomialReduce(q, x+5)

With a remainder of $-630$, we know that $x+5$ is cleary *not* a factor. Let's retry it with $x-5$.

[r, q2] = polynomialReduce(q, x-5)

[r,q3] = polynomialReduce(q2, x-4)

If you were keeping track, you know that we have the following factors:

$$\begin{align} x&\\ x &- 2 \\ x &-4 \\ x&-5  \end{align}$$

As with any factoring problem, we can test our factored form by expanding.

z = x*(x-2)*(x-4)*(x-5)

expand(z)

The expanded form of $z$ matches $y$, so we have the correct factorization. This means that we now know all our eigenvalues.

$$\lambda = \{0,2,4,5\}$$

### Finding eigenvalues for each eigenvalue

#### For $\lambda = 0$

rref([B, zeros(4,1)])

With $x_4$ free and $x_3 = 0$, solve to find eigenvector.

$$\vec v_0 = \left[\begin{array}{r}1\\2/3\\0\\1\\\end{array}\right]$$

We are allowed to clear the denominators in the vector.

$$\vec v_0 = \left[\begin{array}{r}3\\2\\0\\3\\\end{array}\right]$$

We will verify all of the eigenvectors at the end.

#### For $\lambda = 2$

rref([B - 2 * eye(4), zeros(4,1)])

With $x_4$ free, solve to find eigenvector.

$$\vec v_2 = \left[\begin{array}{r}-4\\2\\1\\1\\\end{array}\right]$$

#### For $\lambda = 4$

rref([B - 4 * eye(4), zeros(4,1)])

With $x_4$ free, solve to find eigenvector and clear denominator.

$$\vec v_4 = \left[\begin{array}{r}-2/3\\4/3\\1\\1\\\end{array}\right] \rightarrow \left[\begin{array}{r}-2\\4\\3\\3\\\end{array}\right]$$

#### For $\lambda = 5$

rref([B - 5 * eye(4), zeros(4,1)])

With $x_4$ free, solve to find eigenvector.

$$\vec v_5 = \left[\begin{array}{r}-2\\2\\2\\1\\\end{array}\right]$$

We can now multiply the matrix $B$ by each eigenvector to verify the

$$B \vec v = \lambda \vec v $$

property holds for each of them.

v0 = [ 3 ; 2 ; 0 ; 3 ];
v2 = [ -4 ; 2 ; 1 ; 1 ];
v4 = [ -2 ; 4 ; 3 ; 3 ];

B * v0

B * v2

B * v4

Thus, we have verified all the eigenvalues and associated eigenvectors.