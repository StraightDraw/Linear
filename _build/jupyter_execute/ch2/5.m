# 2.5 Linear Independence

Linearly Independent
: A set of vectors $\{v_1,v_2,...,v_k\}$ is linearly independent if the vector equation $x_1\vec v_1+x_2\vec v_2+\cdots+x_k\vec v_k=\vec 0$ has only the *trivial solution*.

````{Note}
The matrix equations $A\vec x = \vec 0$ always has the trivial solution $\vec x = \vec 0$. Whenever the zero vector is a solution, we refer to it as the **trivial solution** of the system.
````

Linearly Dependent
: A set of vectors that is not linearly indepedent.

If the set of vectors $\{v_1,v_2,...,v_k\}$ is linearly dependent, then there exists a linear combination of the those vectors equal to the zero vector. This means there is a solution

$$\vec x = \left[\begin{array}{r}x_1\\x_2\\\vdots\\x_k\end{array}\right]$$

with at least one component not equal to zero such that to dot product equals zero:

$x_1\vec v_1+x_2\vec v_2+\cdots+x_k\vec v_k=\vec 0$

## Examples: Linearly indepedent

Determine if the set of vectors $\{x_1, x_2, \dots , x_3\}$ and $\{y_1, y_2, \dots , y_3\}$ are linearly independent.

$$x_1 =\left[\begin{array}{r}-1\\-2\\-2\\\end{array}\right], x_2=\left[\begin{array}{r}-2\\1\\1\\\end{array}\right], x_3=\left[\begin{array}{r}0\\4\\3\\\end{array}\right] \hspace{1cm} 
y_1 =\left[\begin{array}{r}1\\5\\5\\\end{array}\right], y_2=\left[\begin{array} {r}4\\2\\5\\\end{array}\right], y_3=\left[\begin{array}{r}1\\-1\\0\\\end{array}\right]$$

Let's first create a matrix $X$ the columns of which are the vectors $\{x_1, x_2, \dots , x_3\}$.

$$X = \left[\begin{array}{rrr}-1&-2&0\\-2&1&4\\-2&1&3\\\end{array}\right]$$

We need to know how many pivots there are because pivots correspond to the linearly independent vectors.

X = [ -1    -2     0 ;
      -2     1     4 ;
      -2     1     3 ] ;
      
rref(X)

Because all three columns are pivot columns, the vectors are linearly indpendent.

We'll do the same for a matrix $Y$.

$$Y = \left[\begin{array}{rrr}1&4&1\\5&2&-1\\5&5&0\\\end{array}\right]$$

Y = [  1     4     1 ;
       5     2    -1 ;
       5     5     0 ] ;
       
rref(Y)

This set of vectors is linearly dependent because there are only two pivots, not three. Therefore, there must be a non-trivial solution to the homogeneous system of equations.

## Linear Dependence Relation

Let's look at the example with the vectors $\vec y_i$ and the matrix $Y$. Instead of thinking of it as three vectors, let's consider what it would reprensent as an augmented matrix.

$$\left[\begin{array}{rr|r}1&4&1\\5&2&-1\\5&5&0\\\end{array}\right]\hspace{1cm}\rightarrow\hspace{1cm}\left[\begin{array}{rr|r}1&0&-0.33333\\0&1&0.33333\\0&0&0\\\end{array}\right]$$

We have a found a solution vector $\vec v = \left[\begin{array}{r}-\frac{1}{3}\\ \frac{1}{3}\end{array}\right]$ which indicates that a linear combination of the first two vectors using the weights $-\frac{1}{3},\frac{1}{3}$ will result in the third vector.

y1 = Y(:,1)
y2 = Y(:,2)
y3 = Y(:,3)

- y1/3 + y2/3 

We can can check using a the logical operator for "equal to":

- y1/3 + y2/3 == y3

The 1's indicate true for every value.

The linear combination of

$$-\left(\frac{1}{3}\right)\left[\begin{array}{r}1\\5\\5\\\end{array}\right] + \left(\frac{1}{3}\right)\left[\begin{array}{r}4\\2\\5\\\end{array}\right]=\left[\begin{array}{r}1\\-1\\0\\\end{array}\right]$$

is called the *linear dependence relation*.

## Spans and Linear Dependence

If a vector $\vec b$ is in the $\text{Span}\{\vec v_1,\vec v_2, \dots , \vec v_k \}$, the set of vectors

$$\{\vec v_1,\vec v_2, \cdots , \vec v_k , \vec b\}$$

is linearly dependent. The *linear dependence relation* for $\vec b$ is the linear combination of the vectors $\{\vec v_1,\vec v_2, \dots , \vec v_k \}$ such that

$$\vec b = c_1\vec v_1 + c_2\vec v_2 + \cdots + c_k\vec v_k$$

which is precisely what it means for a vector to be in the span of a set of vectors.