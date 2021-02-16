# 2.2 Vector Equations and Spans

## The span of a set of vectors

If the vector $\vec b$ is in the *span* of the vectors $\{\vec v_1, \vec v_2, \dots \vec v_n\}$, then there is some linear combination that makes the vector equation true.

$$c_1 \vec v_1 + c_2 \vec v_2 + \dots + c_n \vec v_n = \vec b$$

As shown in Margalit and Robanoff, we can find the weights $c_1, c_2, \dots , c_n$ by row-reducing an augmented matrix. Let's rewrite the equation above slightly by calling the weights $x_1, x_2, \dots , x_n$.

$$x_1 \vec v_1 + x_2 \vec v_2 + \dots + x_n \vec v_n = \vec b$$

If the columns of the matrix $A$ are comprised of the vectors $\vec v_1, \vec v_2, \dots ,\vec v_n$, we would write

$$A = [\vec v_1, \vec v_2, \dots , \vec v_3]$$

and then the above vector equations are equivalent to the matrix equations

$$A\vec x = \vec b$$

We already know from Chapter 1 that the solution vector $\vec x$ can be found by row-reducing the augmented matrix $[A | \vec b]$.

### Example 1

Determine if the vector $\vec b$ in the span of the vectors 

$$\vec v_1 = \left[\begin{array}{r}5\\3\\-2\\\end{array}\right], \vec v_2 = \left[\begin{array}{r}0\\2\\5\\\end{array}\right], \vec v_3 = \left[\begin{array}{r}3\\4\\3\\\end{array}\right]$$

where 

$$\vec b = \left[\begin{array}{r}4\\0\\2\\\end{array}\right]$$

v1 = [5 ; 3 ; -2]
v2 = [ 0; 2 ; 5 ]
v3 = [3 ; 4 ; 3]
b = [ 4 ; 0 ; 2]

We create the matrix $A$ using the vectors as its columns.

A = [v1, v2, v3]

We want to augment $A$ with the vector $\vec b$ and then row-reduce.

[A,b]

rref([A,b])

The components of the vector $\vec x$ are the weights of the linear combination. Let's use the `rats` function to better understand what rational numbers we're talking about.

rats(rref([A,b]))

Mathematicians often write vectors like this as scalar multiples because they look much better.

$$\vec x = \frac{1}{13}\left[\begin{array}{rrr}68 \\ 90 \\ -96\\\end{array}\right]\hspace{1cm} \text{instead of}\hspace{1cm}\vec x = \left[\begin{array}{rrr}\frac{68}{13} \\ \frac{90}{13} \\ \frac{-96}{13}\\\end{array}\right]$$

### Example 2

Determine if the vector $\vec b$ in the span of the vectors $\vec v_1, \vec v_2$ where

$$\vec v_1 = \left[\begin{array}{r}0\\4\\0\\4\\\end{array}\right], \vec v_2 = \left[\begin{array}{r}-1\\5\\0\\-1\\\end{array}\right] \hspace{1cm} \text{and} \hspace{1cm} \vec b = \left[\begin{array}{r}5\\-17\\0\\3\\\end{array}\right]$$

We create the vectors first, then row-reduce the augemented matrix.

v1 = [0;4;0;4]
v2 = [-1;5;0;-1]
b = [5 ; -17 ; 0 ; 3]

M = [v1,v2]

rref([M, b])

We see the third row is impossible since $(0)x_1 + (0)x_2 \neq 1$. Since the matrix equations are *inconsistent*, there is no linear cobination of the vectors $\vec v_1,\vec v_2$ that is equal to $\vec b$ and, thus, 

$$\vec b \notin \text{Span}\{\vec v_1, \vec v_2\}$$


```{toctree}
:hidden:
:titlesonly:


02/1
```
