# 2.7 Basis and Dimension

We are in a great position to understand what it means to be a basis and the dimension of subspace because we have been writing solutions to systems of equations in vector form since chpater 1. We repeat this essential definition directly from the Margalit text.

Basis
: Let $V$ be a subspace of Rn. A *basis* of $V$ is a set of vectors $\{\vec v_1,\vec v_2, \dots , \vec v_m \}\in V$ such that:
1. $V = \text{Span}\{\vec v_1,\vec v_2, \dots , \vec v_m \}$, and
2. the set $\{\vec v_1,\vec v_2, \dots , \vec v_m \}$ is linearly independent.

## Finding a Basis

### Example 1: The basis for a set of vectors.

Given the following set of vectors, find a basis for the $\text{Span}\{\vec v_1,\vec v_2,\vec v_3 \}$.

$$\vec v_1 =\left[\begin{array}{r}-1\\-4\\1\\\end{array}\right],\vec v_2=\left[\begin{array}{r}-6\\-20\\6\\\end{array}\right],\vec v_3=\left[\begin{array}{r}-4\\-13\\4\\\end{array}\right]$$

Let's gather the column vectors into a matrix $M$ for convenience.

M = [-1 -6 -4 ; -4 -20 -13 ; 1 6 4 ];
v1 = M(:,1)
v2 = M(:,2)
v3 = M(:,3)

To find the basis for a $\text{Span}$ of a set of vectors, we need to know how many of the vectors are linearly independent. Let's row reduce $M$.

rref(M)

From the RREF of $M$, we can determine the linear dependence relation which indicates 

$$\vec v_3 = \frac{1}{2}\vec v_1 - \frac{3}{4}\vec v_2$$

and the $\text{Span}$ for these vectors is a two dimensional subspace. This means that the vectors $\vec v_1$ and $\vec v_2$ form a basis for the $\text{Span}$.

$$\mathcal B = \left\{ \left[\begin{array}{r}-1\\-4\\1\\\end{array}\right], \left[\begin{array}{r}-6\\-20\\6\\\end{array}\right] \right\}$$

As the Margalit text points out, there are infinitely many bases for this subspace, but the $\text{Span}$ of each of these will be identical.

### Example 2: Another basis for a set of vectors.

Given the following set of vectors shown as columns of the matrix $R$, find a basis for the $\text{Span}\{\vec v_1,\vec v_2,\vec v_3, \vec v_4, \vec v_5 \}$.

R = [8 -4 -4 0 11 ; -2 5 3 4 3 ; 6 -3 -3 0 7 ; 0 -4 -2 -4 -5 ]

Since the vectors live in $\mathbb R^4$, we can have at most four linearly independent vectors and, correspondingly, 
a 4-dimensional subspace.

rref(R)

Upon row reducing, we find three pivots, so we know that vectors $\vec v_3,\vec v_4$ can be written as linear combinations of the other three. The vectors that correpond to the pivot columns are linearly independent and form a basis for the $\text{Span}$ of this set of vectors.

$$\mathcal B = \left\{  \left[\begin{array}{r}8\\-2\\6\\0\\\end{array}\right], \left[\begin{array}{r}-4\\5\\-3\\-4\\\end{array}\right], \left[\begin{array}{r}11\\3\\7\\-5\\\end{array}\right] \right\}$$

## The Column Space

Column Space of $A$
: The $\text{Span}\{\vec a_1, \vec a_2, \cdots , \vec a_n\}$ where the vectors $\vec a_i$ are the columns of $A$.

So the column space for matrix $R$ from Example 2 has the same basis as the span of the vectors.

## Basis for Null Space of $A$

We have already shown this in section 2.6. We solve the homogeneous system $A\vec x \vec 0$, and write the solution set in vector form.
