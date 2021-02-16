# 2.4 Solution Sets

When we solve a linear system of the form

$$A\vec x = \vec 0$$

it is called an *homogeneous* system. We solve the honogeneous system in excatly the same way as before, by row reducing the augmented matrix $[A, \vec 0]$. For example, if

$$A = \left[\begin{array}{rrrr}5&2&-1&4\\5&-2&0&-2\\\end{array}\right] $$

then 

$$[A,\vec 0] = \left[\begin{array}{rrrr|r}5&2&-1&4&0\\5&-2&0&-2&0\end{array}\right]$$

We solve the system and convert the solutions to vector form.

A=[  5     2    -1     4 ;
     5    -2     0    -2 ]

Let's create an augmented matrix $a$ for the homogeneous system.

````{tip}
Use a lower case variable name for a matrix if you are row reducing it as a lowercase letter is much easier to type.
````

````{margin}
The `zeros` function in MATLAB unsuprisingly creates a matrix of zeros of the given dimnesions, as in 

```
zeros(3,2)
```
$$\left[\begin{array}{rr}0&0\\0&0\\0&0\\\end{array}\right]$$
````

a = [A, zeros(2,1)]

$$R_2 = R_2 - R_1$$

b = a;
b(2,:) = b(2,:) - (b(1,:))

We can solve for the basic variables $x_1,x_2$ in terms of the free variables $x_3,x_4$.

$$\begin{align*}5x_1 + 2x_2 &= x_3 - 4x_4\\-4x_2 &= -x_3 + 6x_4 \end{align*} \implies$$

$$\begin{align*}5x_1 + 2x_2 &= x_3 - 4x_4\\x_2 &= \frac{1}{4}x_3 - \frac{3}{2}x_4 \end{align*}\implies$$

We substitute for $x_2$ in the first equation and simplify.

$$\begin{align*}5x_1 + 2\left(\frac{1}{4}x_3 - \frac{3}{2}x_4\right) &= x_3 - 4x_4\\x_2 &= \frac{1}{4}x_3 - \frac{3}{2}x_4 \end{align*}\implies$$

$$\begin{align*}5x_1 + \frac{1}{2}x_3 - 3x_4 &= x_3 - 4x_4\\x_2 &= \frac{1}{4}x_3 - \frac{3}{2}x_4 \end{align*}\implies$$

$$\begin{align*}5x_1&= \frac{1}{2}x_3 - x_4\\x_2 &= \frac{1}{4}x_3 - \frac{3}{2}x_4 \end{align*}\implies$$

$$\begin{align*}x_1&= \frac{1}{10}x_3 - \frac{1}{5}x_4\\x_2 &= \frac{1}{4}x_3 - \frac{3}{2}x_4 \end{align*}$$

Our solution vector is of the form $\vec x = \left[\begin{array}{r}x_1\\x_2\\x_3\\x_4\end{array}\right]$ where

$$\left[\begin{array}{r}x_1\\x_2\\x_3\\x_4\end{array}\right] = \left[\begin{array}{r}\frac{1}{10}x_3 -\frac{1}{5}x_4\\ \frac{1}{4}x_3 - \frac{3}{2}x_4 \\ x_3\hspace{1.5cm} \\ x_4 \end{array}\right] = \left[\begin{array}{r} \frac{1}{10}\\ \frac{1}{4} \\ 1 \\ 0 \end{array}\right]x_3 + \left[\begin{array}{r}-\frac{1}{5}\\ -\frac{3}{2} \\ 0 \\ 1\end{array}\right]x_4$$

This means that any linear combination of the vectors

$$\left[\begin{array}{r} \frac{1}{10}\\ \frac{1}{4} \\ 1 \\ 0 \end{array}\right] \hspace{1cm}\text{and}\hspace{1cm}\left[\begin{array}{r}-\frac{1}{5}\\ -\frac{3}{2} \\ 0 \\ 1\end{array}\right]$$

is a solution to the homogeneous system of equations, which we can check using MATLAB


u = [.1 ; .25 ; 1 ; 0]
v = [-.2 ; -1.5 ; 0 ; 1]

Let's set the vector $\vec x$ equal to some linear combination of $\vec v$ and $\vec u$ and multiply the result by the matrix $A$.

x = 2 * u + 4 * v;
A * x

Because $A\vec x = \vec 0$ for all linear combinations of $\vec v,\vec u$ (and you should try several), we know that the solution set of these homogeneous equations is the 

$$\text{Span}\{\vec u,\vec v\}$$

and has two dimensions. As the textbooks remarks, the dimension of the subspace containing the solution set has dimension equal to the number of free variables in the system. For example, consider the linear system represented by the following $3\times 6$ coefficent matrix.

$$\left[\begin{array}{rrrrrr}-4&6&3&-2&1&-3\\-2&5&0&5&4&9\\5&2&6&-2&6&6\\\end{array}\right]$$

We know that this matrix will have either 1, 2 or 3 pivots and therefore 3, 4 or 5 free variables. We can row-reduce to verify which situation we have.

````{margin}
```{seealso}
If you are having trouble understanding exactly why we know we must have 3, 4 or 5 free variables, please review [section 2.4](https://textbooks.math.gatech.edu/ila/solution-sets.html) of the textbook.
```
````

A = [ -4     6     3    -2     1    -3 ;
      -2     5     0     5     4     9 ;
       5     2     6    -2     6     6 ] ;
       
rref(A)

Since we have three pivots and, more to the point, three free variables, the solution set of the homogeneous system $[A|\vec 0]$ will have dimension three.


```{toctree}
:hidden:
:titlesonly:


04/1
```
