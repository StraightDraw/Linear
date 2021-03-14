# 3.4 Matrix Multiplication

## Dot products

In section 2.3, we learned that to multiply a matrix by a vector, as in $A\vec v$, we take the dot product of each row of the matrix with the vector $\vec v$. For matrix mulitplication, we do much the same.

````{admonition} Recall
:class: note
We refer to the entries of matrix $A$ as $a_{ij}$ where $i$ is the row number and $j$ is the column number of the entry. The columns of matrix $A$, when referenced as vectors, are $\{\vec a_1,\vec a_2, \dots , \vec a_k \}$. We do *not* have any standard notation for the rows of $A$.
````

We calculate matrix products entry by entry, with the row number and column number of the entry determining the dot product we must calculate. For two matrices $A$ and $B$ for which the operations work, the entries $c_{ij}$ of their product matrix $C$ is the $i$^{th} row of $A$ dotted with the $j$^{th} column of $B$.

$$c_{ij} = \text{Row}(A,i) \cdot \text{Column}(B,j) $$

````{warning}
The dot product requires input vectors of the same length which means that an $n\times m$ matrix $A$ and an $r\times k$ matrix $B$ can only be multiplied if $m=r$.
````

Suppose we wish to multiply matrices $A$ and $B$.

$$AB = \left[\begin{array}{rrrr}-1&6&-2&6\\8&6&2&2\\-2&7&0&8\end{array}\right] \left[\begin{array}{rrr}2&2&5\\1&-1&5\\-1&4&5\\-1&3&-2\end{array}\right] = \left[\begin{array}{rrr}-12&20&52\\-6&14&33\\26&22&99\\\end{array}\right] = C$$

Note that we multiplied a $3\times 4$ matrix $A$ by a $4\times 3$ matrix $B$. Solely in terms of dimension,

$$(3\times 4)(4\times 3)$$

and we say the "inner dimensions" must be equal as, here, we have $4=4$.

### Example

Let's verify several of the entries in the $3\times 3$ product matrix $C$.

A = [5 5 -1 1 ; 6 5 3 4 ; 1 -1 8 0 ] ;
B = [0 4 0 ; 2 0 1 ; 3 2 4 ; -1 4 0 ] ;
C = A * B

The entry $c_{11} = 6$ is the dot product of Row 1 of $A$ and Column 1 of $B$.

dot(A(1,:),B(:,1))

The entry $c_{12} = 15$ is the dot product of Row 2 of $A$ and Column 1 of $B$.

dot(A(2,:),B(:,1))

The entry $c_{23} = 17$ is the dot product of Row 2 of $A$ and Column 3 of $B$.

dot(A(2,:),B(:,3))

## Problems with matrix multiplication

Matrices are not real numbers, so while we can multiply them, we should not expect them to behave "normally." There are three problems described in the Margalit text which you should review carefully.

1. Matrix multiplication is not commutative even when it is possible to multiply the matrices.

    $$AB\text{ is not usually equal to }BA$$

2. Cancellation does not necessarily work, even when $AB = 0$.

    $$AB = AC \hspace{5mm}\nRightarrow\hspace{5mm} B = C$$

3. It is possible, even if $A \neq 0$ and $B\neq 0$, for

    $$AB = 0$$


## Addition of matrices

Addition of matrices occurs component-wise. For $A+B=C$, the matrix sum $C$ has entries

$$c_{ij}=a_{ij}+b_{ij}$$

### Example

Consider the sum of 

$$ A + B = \left[\begin{array}{rr}0&6\\8&0\\0&1\\\end{array}\right] + \left[\begin{array}{rr}1&5\\-1&3\\8&5\\\end{array}\right] = \left[\begin{array}{rr}1&11\\7&3\\8&6\\\end{array}\right] = C$$


A = [0 6 ; 8 0 ; 0 1 ] ; 
B = [1 5 ; -1 3 ; 8 5 ] ;

To calcuate the Row 1 Column 1 entry of $C$, we have $c_{11} = a_{11} + b_{11} = 1$.

A(1,1) + B(1,1)

To calcuate the Row 2 Column 2 entry of $C$, we have $c_{22} = a_{22} + b_{22} = 3$.

A(2,2) + B(2,2)

To calcuate the Row 3 Column 1 entry of $C$, we have $c_{31} = a_{31} + b_{31} = 8$.

A(3,1) + B(3,1)

````{note}
Since addition occurs component-wise, we can add matrix $B$ to an $n\times m$ matrix $A$ if and only $B$ has dimensions $m\times n$.
````