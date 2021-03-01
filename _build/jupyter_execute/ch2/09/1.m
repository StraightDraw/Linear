# 2.9.1 Lab 5

## Part I. Find a basis for the span of the set of vectors

For the set of vectors indicated, find a basis for their span.

If your birthday is in:

* January through April, do the sets of vectors $\vec v$.
* May through August, do the sets of vectors $\vec x$.
* September through December, do the sets of vectors $\vec y$.

$$\vec v_1 =\left[\begin{array}{r}0\\0\\0\\1\\\end{array}\right],\vec v_2=\left[\begin{array}{r}0\\-1\\1\\1\\\end{array}\right],\vec v_3=\left[\begin{array}{r}0\\3\\-3\\4\\\end{array}\right],\vec v_4=\left[\begin{array}{r}-1\\2\\-4\\4\\\end{array}\right]$$

```
v1 = [0 ; 0 ; 0 ; 1 ];
v2 = [0 ; -1 ; 1 ; 1 ];
v3 = [0 ; 3 ; -3 ; 4 ];
v4 = [-1 ; 2 ; -4 ; 4 ];
```

$$\vec x_1 =\left[\begin{array}{r}4\\-4\\0\\0\end{array}\right],\vec x_2=\left[\begin{array}{r}1\\-1\\0\\0\end{array}\right],\vec x_3=\left[\begin{array}{r}1\\-5\\0\\0\end{array}\right],\vec x_4=\left[\begin{array}{r}-1\\21\\1\\1\end{array}\right]$$

```
x1 = [4 ; -4 ; 0 ; 0 ];
x2 = [1 ; -1 ; 0 ; 0 ];
x3 = [1 ; -5 ; 0 ; 0 ];
x4 = [-1 ; 21 ; 1 ; 1 ];
```

$$\vec y_1 =\left[\begin{array}{r}-4\\0\\0\\-4\\\end{array}\right],\vec y_2=\left[\begin{array}{r}2\\3\\0\\2\\\end{array}\right],\vec y_3=\left[\begin{array}{r}6\\-2\\0\\6\\\end{array}\right],\vec y_4=\left[\begin{array}{r}19\\5\\1\\19\\\end{array}\right]$$

```
y1 = [-4 ; 0 ; 0 ; -4 ];
y2 = [2 ; 3 ; 0 ; 2 ];
y3 = [6 ; -2 ; 0 ; 6 ];
y4 = [19 ; 5 ; 1 ; 19 ];
```

## Part II. Find a basis for the column space of the matrix

For the matrix indicated, find a basis for the column space.

If your first name begins with:

* A through D, do A.
* D through J, do D.
* J through Z, do J.

$$A = \left[\begin{array}{rrr}1&23&8\\1&18&5\\0&0&1\\\end{array}\right]$$

```
A = [1 23 8 ; 1 18 5 ; 0 0 1 ];
```

$$ D = \left[\begin{array}{rrr}1&10&2\\0&0&1\\0&1&-2\\\end{array}\right]$$

```
D = [1 10 2 ; 0 0 1 ; 0 1 -2 ];
```

$$J = \left[\begin{array}{rrr}-6&5&-12\\0&1&1\\8&-6&17\\\end{array}\right]$$

```
J = [-6 5 -12 ; 0 1 1 ; 8 -6 17 ];
```

### Part III: Find the $\mathcal B$-coordinates of the vector

Write the vector

$$\vec w = \left[\begin{array}{r}8\\-2\\\end{array}\right]$$

in $\mathcal B$-coordinates where the basis vectors $\vec b_1,\vec b_2$ are given.

If your last name begins with:

* B through G, do Set 1.
* H through Q,  Set 2.
* R through Z,  Set 3.
* A pick any of the three.

**Set 1**

$$ \vec b_1 =\left[\begin{array}{r}3\\1\end{array}\right],\vec b_2=\left[\begin{array}{r}4\\1\\\end{array}\right]$$

```
B = [3 4 ; 1 1 ];
```

**Set 2**

$$ \vec b_1 =\left[\begin{array}{r}-3\\3\\\end{array}\right],\vec b_2=\left[\begin{array}{r}-7\\2\\\end{array}\right]  $$

```
B = [-3 -7 ; 3 2 ];
```

**Set 3**

$$\vec b_1 =\left[\begin{array}{r}-8\\6\\\end{array}\right],\vec b_2=\left[\begin{array}{r}3\\-1\\\end{array}\right]$$

```
B= [-8 3 ; 6 -1 ];
```