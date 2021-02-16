# 2.4.1 Lab 3

## Part I. Determine if a vector is in the span of a set of vectors

If your birthday is in:

* January through April, do the sets of vectors $\vec v$.
* May through August, do the sets of vectors $\vec x$.
* September through December, do the sets of vectors $\vec y$.

````{margin}
```{note}
If the columns of matrix $A$ are the vectors $\{\vec a_1,\vec a_2, \dots , \vec a_k \}$, then 

$$A = [\vec a_1,\vec a_2, \dots , \vec a_k ]$$ 
```
````

````{margin}
The same basic notation works in MATLAB to create $A$ from vectors `a1`, `a2` and `a3`.
```
A = [a1, a2, a3]
```
````


Determine if the vector 

$$\vec v = \left[\begin{array}{r}1\\4\\1\\7\\\end{array}\right]$$

is in the $\text{Span}\{\vec v_1,\vec v_2, \vec v_3 \}$ where

$$\vec v_1 =\left[\begin{array}{r}0\\0\\-1\\0\\\end{array}\right],\vec v_2=\left[\begin{array}{r}3\\6\\0\\12\\\end{array}\right],\vec v_3=\left[\begin{array}{r}1\\1\\1\\2\\\end{array}\right]$$

____

Determine if the vector 

$$\vec x = \left[\begin{array}{r}-1\\0\\-1\\-1\\\end{array}\right]$$

is in the $\text{Span} = \{\vec x_1,\vec x_2, \vec x_3 \}$ where

$$\vec x_1 =\left[\begin{array}{r}-2\\0\\0\\0\\\end{array}\right],\vec x_2=\left[\begin{array}{r}14\\5\\0\\0\\\end{array}\right],\vec x_3=\left[\begin{array}{r}-1\\-1\\1\\1\\\end{array}\right]$$

x1 = [-2 ; 0 ; 0 ; 0 ] ;
x2 = [14 ; 5 ; 0 ; 0 ] ;
x3 = [-1 ; -1 ; 1 ; 1 ] ;
x = [-1 ; 0 ; -1 ; -1 ] ;

____

Determine if the vector 

$$\vec y=\left[\begin{array}{r}2\\-3\\-1\\-1\\\end{array}\right]$$

is in the $\text{Span}\{\vec y_1,\vec y_2, \vec y_3 \}$ where

$$\vec y_1 =\left[\begin{array}{r}3\\-3\\0\\0\\\end{array}\right],\vec y_2=\left[\begin{array}{r}3\\2\\0\\0\\\end{array}\right],\vec y_3=\left[\begin{array}{r}5\\3\\1\\0\\\end{array}\right]$$

y1 = [3 ; -3 ; 0 ; 0 ] ;
y2 = [3 ; 2 ; 0 ; 0 ] ;
y3 = [5 ; 3 ; 1 ; 0 ] ;
y = [2 ; -3 ; -1 ; -1 ] ;

## Part II. Matrix-vector multiplication

Use the dot product function `dot` to show matrix-vector multiplication.

````{hint}
You can create a row vector from the row of a matrix, for example, the second row as shown below.

```
A = randi(5,5,4)
r2 = A(2,:)
```

````

````{margin}
```{tip}
The MATLAB function `dot` works equally well with row vectors and column vectors.
```
````


If your first name begins with:

* A through D, do A.
* D through J, do D.
* J through Z, do J.

Multiply $A\vec v$ where

$$A = \left[\begin{array}{rrrrr}7&-3&6&5&9\\7&2&5&-3&-4\\-3&7&6&4&0\\0&5&8&-3&4\\\end{array}\right], \vec v = \left[\begin{array}{r}7\\-1\\1\\-2\\8\\\end{array}\right]$$

A = [7 -3 6 5 9 ;7 2 5 -3 -4 ;-3 7 6 4 0 ;0 5 8 -3 4 ] ;
v = [ 7 ; -1 ; 1 ; -2 ; 8 ] ;

____

Multiply $D\vec x$ where

$$D = \left[\begin{array}{rrrrr}2&6&-2&-2&-5\\7&-3&-3&10&10\\3&5&-3&-5&-1\\-2&5&-3&10&3\\\end{array}\right], \vec x = \left[\begin{array}{r}6\\-1\\3\\-1\\7\\\end{array}\right]$$

D = [2 6 -2 -2 -5 ;7 -3 -3 10 10 ;3 5 -3 -5 -1 ;-2 5 -3 10 3 ] ;
x = [6 ;-1 ;3 ;-1 ;7 ] ;

____

Multiply $J\vec y$ where

$$J = \left[\begin{array}{rrrrr}7&-3&-1&2&2\\9&7&-2&10&2\\2&9&3&4&7\\8&8&1&10&6\\\end{array}\right], \vec y = \left[\begin{array}{r}7\\0\\6\\5\\-2\\\end{array}\right]$$

J = [7 -3 -1 2 2 ;9 7 -2 10 2 ;2 9 3 4 7 ;8 8 1 10 6 ] ;
y = [7 ;0 ;6 ;5 ;-2 ] ;

### Part III: Solve the homogeneous system of equations

Solve the homogenenous system of equations which are of the form $A\vec v = \vec 0$, but use row operations instead of the `rref` function. Write the solution set in vector form.

If your last name begins with:

* B through G, do B.
* H through Q, do H.
* R through Z, do R.
* A pick any of the three.



$$B = \left[\begin{array}{rrrrr|r}7&18&39&-16&-1&0\\0&-1&-1&2&0&0\\-9&-22&-49&18&1&0\end{array}\right]$$

B = [7 18 39 -16 -1 ;0 -1 -1 2 0 ;-9 -22 -49 18 1 ] ;
z = zeros(3,1) ;
[B,z]

$$H = \left[\begin{array}{rrrrr|r}1&-5&-2&-1&-4&0\\-5&25&7&8&20&0\\-2&10&-2&11&11&0\end{array}\right]$$

H = [1 -5 -2 -1 -4 ;-5 25 7 8 20 ;-2 10 -2 11 11 ] ;
z = zeros(3,1) ;
[H,z]

$$R = \left[\begin{array}{rrrrr}6&6&-12&37&-8\\-4&6&-2&-7&3\\2&-2&0&5&-2\\\end{array}\right]$$

R = [6 6 -12 37 -8 ;-4 6 -2 -7 3 ;2 -2 0 5 -2 ] ;
z = zeros(3,1) ;
[R,z]