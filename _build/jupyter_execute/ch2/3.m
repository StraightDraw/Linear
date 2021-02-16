# 2.3 Matrix Equations

The key to understanding matrix multiplication is the dot product of two vectors. The book calls this the **row-column recipe** for matrix-vector multiplication.

$$\vec x = \left[\begin{array}{r}-1\\1\\5\\\end{array}\right], \vec y = \left[\begin{array}{r}1\\3\\-1\\\end{array}\right]$$

The dot product is the sum of the component-wise products.

$$ \vec x \cdot \vec y = (-1)(1) + (1)(3) + (5)(-1) = -3 $$

MATLAB has a dot product function called, not too surprisingly, `dot`.

x = [-1 ; 1 ; 5]
y = [ 1 ; 3 ; -1]
dot(x,y)

When multiplying a matrix by a vector, as in $A\vec x$, we take the dot product of each row with the vector.

$$A = \left[\begin{array}{rrrr}3&-2&3&-2\\-2&-2&0&1\\0&4&5&1\\\end{array}\right], \hspace{1cm} \vec x = \left[\begin{array}{r}-2\\1\\5\\0 \end{array}\right]$$

This means that the matrix must have the same number of columns as there are components (rows) of $\vec x$. If $A \vec x = \vec b$, then the first component of $\vec b$ is the dot product of the first row of $A$ with $\vec x$.

$$\left[\begin{array}{r}3\\-2\\3\\-2\\\end{array}\right] \cdot \left[\begin{array}{r}-2\\1\\5\\0\\\end{array}\right] = -6 -2 + 15 + 0  = 7$$

The second component is the product of the second row and $\vec x$, and so on.

$$\left[\begin{array}{r}-2\\-2\\0\\1\end{array}\right] \cdot  \left[\begin{array}{r}-2\\1\\5\\0\\\end{array}\right] = -4 - 2 + 0 + 0 = -6$$

$$\left[\begin{array}{r}0\\4\\5\\1\\\end{array}\right] \cdot  \left[\begin{array}{r}-2\\1\\5\\0\\\end{array}\right] = 0 + 4 + 25 + 0 = 29$$

We can have MATLAB do the multiplication to verify our work that shows

$$A\vec x = \left[\begin{array}{r}7\\2\\29\\\end{array}\right]$$

If we create vectors $\vec r_1,\vec r_2,\vec r_3$ from the rows of $A$, we can use the dot product function to check.

````{margin}
```{note}
The $\vec v$ is the same vector whether it is represented as a column vector 

$$\vec v = \left[\begin{array}{r}1\\2\\3\\\end{array}\right]$$

or as a row vector 

$\vec v = \left[\begin{array}{rrr}1&2&3\\\end{array}\right]$.
```
````

A = [3 -2 3 -2 ; -2 -2 0 1 ; 0 4 5 1 ];
r1 = A(1,:)
r2 = A(2,:)
r3 = A(3,:)
x = [-2 ; 1 ; 5 ; 0]

b = [ dot(r1,x) ; dot(r2,x) ; dot(r3,x) ]

Of course, we can simply use MATLAB's multiplication function to verify $\vec b$.

b = A * x

This explains why, when we row reduce the augmented matrix $[A|\vec b]$, we find the vector $\vec x$.

rref([A,b])