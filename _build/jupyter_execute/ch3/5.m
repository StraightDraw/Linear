# 3.5 Matrix Inverses

Only a square matrix $A$ can only have an inverse, since by definition a matrix $B$ is the inverse of $A$ only if

$$AB = BA = I$$

Both the inner and outer dimensions must match since the multiplication must be legal in both cases, so only $n\times n$ matrices can be invertible.

````{warning}
Many square matrices are **not invertible**.
````

## Inverses and row reduction

If we row reduce an invertible matrix $A$ augmented with the identity matrix all the way to RREF, then the result will give us $A^{-1}$.

$$ [A|I] \hspace{5mm}\rightarrow\text{to RREF}\hspace{5mm}=\hspace{5mm} \left[I|A^{-1}\right]$$

### Example

Determine if $A$ is invertible. If so, find $A^{-1}$.

$$A = \left[\begin{array}{rrr}-1&-1&0\\3&4&-1\\1&-2&2\\\end{array}\right]$$

We augment $A$ with the $3\times 3$ identity matrix $I_3$.

$$[A,I_3] = \left[\begin{array}{rrr|rrr}-1&-1&0&1&0&0\\3&4&-1&0&1&0\\1&-2&2&0&0&1\\\end{array}\right]$$

When the left side of the augmented matrix is in RREF form, we will either have $I_3$ or fewer than three pivots. If $A$ row reduces to $I$, then $A$ is invertible and its inverse appears on the right side of the row-reduced augmented matrix.

A = [ -1 -1 0 ; 3 4 -1; 1 2 2 ]

As usual, we will use a lower-case letter while doing our row operations. Let's create the augmented matrix

$$a = [A|I_3]$$



a = [A,eye(3)]

### Row reduce

a([1 3],:) = a([3 1],:)

a(2,:) = a(2,:) - 3 * a(1,:)

a(3,:) = a(3,:) + a(1,:)

a([2 3],:) = a([3 2],:)

a(3,:) = a(3,:) + 2 * a(2,:)

a(3,:) = a(3,:) / -3

a(2,:) = a(2,:) - 2 * a(3,:)

a(1,:) = a(1,:) - 2 * a(3,:)

a(1,:) = a(1,:) - 2 * a(2,:)

rats(a)

Since the left-hand side of the augmented matrix is $I_3$, the right side is $A^{-1}$.

$$\left[\begin{array}{rrr}-10/3 & -2/3 & -1/3\\7/3 & 2/3 & 1/3 \\ -2/3 & -1/3 & 1/3\end{array}\right]$$



```{toctree}
:hidden:
:titlesonly:


05/1
```
