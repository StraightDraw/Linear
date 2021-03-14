# 3.6 Invertible Matrix Theorem

**Invertible Matrix Theorem (IMT).** Let $A$ be an $n\times n$ matrix, and let $T:\mathbb R^n\rightarrow \mathbb R^n$ be the matrix transformation $T(\vec x)=A\vec x$. The following statements are equivalent:

1. $A$ is invertible.
2. $A$ has $n$ pivots.
3. $\text{Null}(A)={\vec 0}$.
4. The columns of $A$ are linearly independent.
5. The columns of $A$ span $\mathbb R^n$.
6. $A\vec x=\vec b$ has a unique solution for each $b$ in $\mathbb R^n$.
7. The linear transformation $T$ is invertible, specifically:
    * $T$ is one-to-one.
    * $T$ is onto.

## Using the IMT

We use the IMT all the time. Is a set of vectors a basis for $\mathbb R^n$? Combine them into a matrix and check to see if the matrix is invertible. Is the linear transformation one-to-one? Verify the null space contains only the $\vec 0$. Does $A$ have an inverse? Row reduce and check how many pivots the matrix has.

## Examples

### Example 1

Determine if the linear transformation $T$ is one-to-one. Is it onto? The standard matrix associated with $T$ is

$$A = \left[\begin{array}{rrrr}0&-2&-3&9\\0&0&0&1\\-2&2&5&-15\\1&-1&-2&7\\\end{array}\right]$$

A = [0 -2 -3 9 ; 0 0 0 1 ; -2 2 5 -15 ; 1 -1 -2 7 ];
rref(A)

With 4 pivots, we know the dimension of the null is zero and thus that the transformation is both one-to-one and onto (invertible).

### Example 2

Is the set of vectors a basis for $\mathbb R^5$?

$$\left\{\vec v_1 =\left[\begin{array}{r}1\\-2\\2\\-1\\3\\\end{array}\right],\vec v_2=\left[\begin{array}{r}2\\0\\5\\4\\5\\\end{array}\right],\vec v_3=\left[\begin{array}{r}-2\\-1\\3\\3\\4\\\end{array}\right],\vec v_4=\left[\begin{array}{r}2\\1\\2\\4\\3\\\end{array}\right],\vec v_5=\left[\begin{array}{r}2\\0\\3\\1\\2\\\end{array}\right]\right\}$$





We create the matrix $B = [\vec b_1,\vec b_2, \vec b_3 , \vec b_4 , \vec b_5 ]$ and row reduce.

B = [1 2 -2 2 2 ; -2 0 -1 1 0 ; 2 5 3 2 3 ; -1 4 3 4 1 ; 3 5 4 3 2 ];
inv(B)

Since $B$ is invertible, we know the columns are linearly independent and thus form a basis for $\mathbb R^5$.