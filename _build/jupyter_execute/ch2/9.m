# 2.9 The Rank Theorem

We will repeat the following important theorem from the Margalit textbook.

Rank of a matrix $A$
: The dimension of the column space of $A$ is the *rank+ of $A$.

Nullity of a matrix $A$ 
: The dimension of the null space of $A$ is the *nullity* of $A$.


**Rank Theorem**
The rank of matrix $A$ plus the nullity of $A$ equals the number of columns in $A$. If $A$ is an $m\times n$ matrix, then

$$\text{rank}+\text{nullity}=n$$


## Example: Rank of Matrix

M = [-4 3 25 11 ; -12 7 81 35 ; -2 2 11 5 ]
rref(M)

The matrix $M$ has two pivots, so it's column space is a 2-dimensional subspace of $\mathbb R^3$ and it's rank equals 2. There are two free variables, so the null space is a 2-dimensonial subspace of $\mathbb R^4$. The solution vector 

$$\vec x = \left[\begin{array}{r}x_1\\x_2\\x_3\\x_4\end{array}\right]$$

has four components. Since there are two free variables, a basis for the null space will require two vectors, and hence the nullity of $A$ also equals 2.


```{toctree}
:hidden:
:titlesonly:


09/1
```
