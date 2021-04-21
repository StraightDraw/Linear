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

This means we can test eigenvalues by creating the matrix

$$A - \lambda I$$

and finding whether its *null space* has any nonzero vectors in it.