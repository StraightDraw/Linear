# 3.2 One-to-one and Onto Transformations

## Domain and Codomain

A transformation 

$$T\left(\vec x\right) = \vec y$$

based on the $n\times m$ matrix $A$ always maps from the domain $\mathbb R^m$ into the range $\mathbb R^n$. The vectors $\vec x$ in the domain, to be able to be multiplied in the order $A\vec x$ must have the same number of components as the columns of $A$, which is $m$. The vectors $\vec y$ in the range will have $n$ components because $n$ dot products will be needed.

We reproduce a theorem from Margalit to show what we can do with MATLAB to verify a matrix transformation is one-to-one.

### Theorem. *One-to-one* matrix transformations.

Let $A$ be an $m\times n$ matrix, and let $T\left(\vec x\right) = A \vec x$ be the associated matrix transformation. The following statements are equivalent:

1. $T$ is one-to-one.
2. For every $\vec b \in \mathbb R^m$, the equation $T\left(\vec x\right) = \vec b$ has at most one solution.
3. For every $\vec b\in \mathbb R^n$, the equation $A\vec x = \vec b$ has a unique solution or is inconsistent.
4. $A\vec x = \vec 0$ has only the trivial solution.
5. The columns of $A$ are linearly independent.
6. $A$ has a pivot in every column.
7. The range of $T$ has dimension $n$.

To verify a matrix transformation is one-to-one, we can use option 6: row-reduce $A$ to determine if every column corresponds to a pivot position.

## Examples

Consider the transformations corresponding to the following matrices:

$$A = \left[\begin{array}{rr}3&-11\\0&1\\0&1\\\end{array}\right],\hspace{1cm} B = \left[\begin{array}{rrr}0&-1&1\\2&3&5\\-4&9&-24\\\end{array}\right]$$

$$C = \left[\begin{array}{rrrr}0&0&-1&1\\1&4&1&1\\1&4&-2&6\\1&4&-2&4\\\end{array}\right],\hspace{1cm} D = \left[\begin{array}{rrrrr}4&2&23&10&8\\-4&-2&-18&-7&-6\\-16&-8&-57&-18&-19\\\end{array}\right]$$

It should be clear right away that the *wide* matrix $D$ could never be associated with a one-to-one transformation. There is no way it could have pivots in all five columns since only three pivots are possible. Let's check on the others.

A = [3 -11 ; 0 1 ; 0 1 ];
B = [0 -1 1 ; 2 3 5 ; -4 9 -24 ];
C = [0 0 -1 1 ; 1 4 1 1 ; 1 4 -2 6 ; 1 4 -2 4 ];
D = [4 2 23 10 8 ; -4 -2 -18 -7 -6 ; -16 -8 -57 -18 -19 ];

rref(A)
rref(B)

Both matrices $A$ and $B$ have a pivot in each column, so their corresponding transformations will be one-to-one. 

rref(C)

While it certainly would be possible for a $4\times 4$ matrix to be one-to-one, this one is not. It has only three pivots.

### Theorem. *Onto* matrix transformations. 

Let $A$ be an $m\times n$ matrix, and let $T\left(\vec x\right) = A \vec x$ be the associated matrix transformation. The following statements are equivalent:
1. $T$ is onto.
2. $T\left(\vec x\right) = \vec b$ has at least one solution for every $\vec b \in \mathbb R^m$.
3. $A\vec x = \vec b$ is consistent for every $\vec b \in \mathbb R^m$
4. The columns of $A$ span $\mathbb R^m$.
5. $A$ has a pivot in every row.
6. The range of $T$ has dimension $m$.

Let's consider the same 4 matrices as before.

````{margin}
```{note}
A square matrix $M$ is both *one-to-one* and *onto*, or neither.
```
````

A = [3 -11 ; 0 1 ; 0 1 ];
B = [0 -1 1 ; 2 3 5 ; -4 9 -24 ];
C = [0 0 -1 1 ; 1 4 1 1 ; 1 4 -2 6 ; 1 4 -2 4 ];
D = [4 2 23 10 8 ; -4 -2 -18 -7 -6 ; -16 -8 -57 -18 -19 ];

rref(A)

Of course, there is no way for the *tall* matrix $A$ to be onto since it can have at most 2 pivots.

rref(B)

rref(D)

The transformations associated with matrices $B$ and $D$ are *onto* because the matrices have pivots in every row.

rref(C)

The transformation associated with matrix $C$ is not *onto* because not every row has a pivot.