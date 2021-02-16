# 2.1 Vectors

## Operations

### Vector Addition
The addition of vectors occurs component-wise. For two vectors in $\mathbb R^4$:

$$\vec v = \left[\begin{array}{r}3\\-1\\2\\9\\\end{array}\right], \vec u = \left[\begin{array}{r}4\\5\\-2\\-5\\\end{array}\right], \hspace{1cm}\vec v + \vec u = \left[\begin{array}{r}7\\4\\0\\4\\\end{array}\right]$$

If two vectors have a different number of components, they cannot be added or subtracted.

### Scalar Multiplication

Suppose we take a real number $r$. We can multiply a vector by this scalar by multiplying each component of the vector by $r$. For example, if $r = 3$, then:

$$r\vec v = 3\left[\begin{array}{r}3\\-1\\2\\9\\\end{array}\right] = \left[\begin{array}{r}9\\-3\\6\\27\\\end{array}\right]$$


### Vector Subtraction

To substract $\vec v - \vec u$ we add $\vec v$ to $(-1)\vec u$.

$$\vec v - \vec u = \left[\begin{array}{r}3\\-1\\2\\9\\\end{array}\right] + \left[\begin{array}{r}-4\\-5\\2\\5\\\end{array}\right] = \left[\begin{array}{r}-1\\-6\\4\\14\\\end{array}\right]$$

Clearly, like addition, we are subtracting component-wise.



## MATLAB and Vectors

Let's create the vectors used in the above examples.

v = [3 ; -1 ; 2 ; 9]
u = [4 ; 5 ; -2 ; -5]

Addition and subtraction work exactly as you would guess.

v + u

v - u

Scalar multiplication also makes sense, for example, if $r = 3$.

3 * v

Be sure to spend time reading and interacting Margalit and Robanoff textbook to visualize what it means to add, subtract vectors and to take the scalar multiple of a vector.

````{note}
In this course, the word *scalar* amost always means *real number*. However, we can have complex-valued matrices and vectors. In those cases, a *scalar* would be a complex number.
````

## Linear Combinations of Vectors

A linear combination of the vectors $\vec v_1, \vec v_2, \dots \vec v_n$ uses scalars $c_1, c_2, \dots c_n$ as weights. If we have the vectors

$$\vec v_1 = \left[\begin{array}{r}5\\3\\-2\\\end{array}\right], \vec v_2 = \left[\begin{array}{r}0\\2\\5\\\end{array}\right], \vec v_3 = \left[\begin{array}{r}3\\4\\3\\\end{array}\right]$$

and weights $c_1 = 4, c_2 = -1, c_3 = 2$, then the result is the linear combination:

$$c_1\vec v_1 + c_2\vec v_2 +c_3\vec v_3 = 4\left[\begin{array}{r}5\\3\\-2\\\end{array}\right]-\left[\begin{array}{r}0\\2\\5\\\end{array}\right] +2\left[\begin{array}{r}3\\4\\3\\\end{array}\right] = \left[\begin{array}{r}26\\18\\-7\\\end{array}\right]$$

## Linear Combinations in MATLAB

Let's create the vectors from the above example.

v1 = [5 ; 3 ; -2]
v2 = [ 0; 2 ; 5 ]
v3 = [3 ; 4 ; 3]

Then we apply addition, subtraction and scalar multiplications as before.

4 * v1 - v2 + 2 * v3