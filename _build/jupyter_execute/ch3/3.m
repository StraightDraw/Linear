# 3.3 Linear Transformations

## Matrix Transformations

All linear transformations of vector spaces are matrix transformations. Let's specify exactly what we mean by terms like *standard matrix*.

Standard Matrix
: The matrix associated with the linear transformation so that

$$T(\vec x) = A\vec x$$

Linear Transformation
: A transformation $T:\mathbb R^n\rightarrow \mathbb R^m$, for all vectors $\vec u,\vec v \in \mathbb R^n$ and all scalars $c$, satisfies

$$\begin{align*}T(\vec u+\vec v)&=T(\vec u)+T(\vec v)\\T(c\vec u)&=cT(\vec u)\end{align*}$$

The transformation is the same regardless of whether we add the vectors and transform the sum or transform the vectors then sum them. The same is true for scalar products.

````{note}
The zero vector is *always* mapped to the zero vector by a linear transformation.

$$T\left(\vec 0\right) = \vec 0$$
````

## Finding the standard matrix for a linear transformation

The Margalit text is excellent, and you should spend a goodly amount of time with the visualization of linear transformations there.

````{tip}
Find where the standard basis vectors are mapped, and you have found the standard matrix of the linear transformation.
````

To find what matrix is associated with a linear transformation, we find where the standard basis vectors are mapped. If the transformation

$$T(\vec x) = A\vec x$$

for some $m\times n$ matrix $A$, then

$$A = [T(\vec e_1),T(\vec e_2), \cdots ,T(\vec e_m)]$$

where $\vec e_i$ are the standard basis vectors in $\mathbb R^n$.

### Reflections in $\mathbb R^2$

#### Reflect across $x$-axis.

Reflecting across the $x$-axis will not affect vectors on the $x$-axis, so

$$T(\vec e_1)=T\left( \left[\begin{array}{r}1\\0\end{array}\right] \right) = \left[\begin{array}{r}1\\0\end{array}\right]$$

but

$$T(\vec e_2)=T\left( \left[\begin{array}{r}0\\1\end{array}\right] \right) = \left[\begin{array}{r}0 \\ -1\end{array}\right]$$

The standard matrix is

$$A = \left[\begin{array}{rr}1&0\\0&-1\end{array}\right]$$

where the columns of $A$ are the vectors $T(\vec e_1)$ and $T(\vec e_2)$.

#### Reflect across $y$-axis.

Reflecting across the $y$-axis will not affect vectors on the $y$-axis, so

$$T(\vec e_2)=T\left( \left[\begin{array}{r}0\\1\end{array}\right] \right) = \left[\begin{array}{r}0\\1\end{array}\right]$$

but

$$T(\vec e_1)=T\left( \left[\begin{array}{r}1\\0\end{array}\right] \right) = \left[\begin{array}{r}-1 \\ 0\end{array}\right]$$

The standard matrix is

$$A = \left[\begin{array}{rr}-1&0\\0&1\end{array}\right]$$

where the columns of $A$ are the vectors $T(\vec e_1)$ and $T(\vec e_2)$.

#### Reflection through the origin

A reflection through the origin is a reflection through both the $x$ and $y$-axis. We can compose the two functions which means multiplying the standard matrices in the proper order.Suppose that the linear transformation $T_1$ is the reflection through the $x$-axis and that $T_2$ is the reflection through the $y$-axis. Then 

$$T_1(\vec v) = A_1 \vec v = \left[\begin{array}{rr}1&0\\0&-1\end{array}\right]\vec v$$

and

$$T_2(\vec v) = A_2 \vec v = \left[\begin{array}{rr}-1&0\\0&1\end{array}\right]\vec v$$

The first transformation followed by the second is a composition of the transformation functions where

$$T_2(T_1(\vec v)) = A_2 A_1 \vec v$$

and the standard matrix for a reflection through the origin is

$$A_2 A_1 = \left[\begin{array}{rr}1&0\\0&-1\\\end{array}\right]\left[\begin{array}{rr}-1&0\\0&1\\\end{array}\right] = \left[\begin{array}{rr}-1&0\\0&-1\\\end{array}\right]$$

````{warning}
Do not be fooled by this case where $A_1A_2 = A_2A_1$. Multiplying in the incorrect order usually generates an incorrect standard matrix for the transformation.
````

### Scaling in $\mathbb R^2$

#### Horizontal scaling

For a non-zero $k\in \mathbb R$, horizontal scaling by a factor of $k$ sends $\vec e_1$ to $k\vec e_1$

$$T(\vec e_1) = T\left(\left[\begin{array}{r}1\\0\end{array}\right]\right) = \left[\begin{array}{r}k\\0\end{array}\right]$$

but $\vec e_1$ is not affected

$$A = \left[\begin{array}{rr}k&0\\0&1\end{array}\right]$$

is the standard matrix associated with horizontal scaling.

#### Vertical scaling

The same reasoning applies, and 

$$A = \left[\begin{array}{rr}1&0\\0&k\end{array}\right]$$

is the standard matrix associated with vecrtical scaling.

## Rotations in $\mathbb R^2$

We can only accomplish certain rotations using the approach shown above. In general, a rotation by $\theta$ is given by

$$R_\theta(\vec v) = \left[\begin{array}{rr}\cos \theta & -\sin\theta \\\sin\theta & \cos\theta\end{array}\right]$$

## Summary

You should know how to find the standard matrix of a transformation, including compositions of multiple transformations. Matrix multiplication and composition of linear transformation will be covered in full detail in the next section.

### Example

Suppose we wish to find the standard matrix for a transformation that (1) stretches vertically by a factor of 4, then (2) rotates by $270^\circ$ and finally (3) reflects across the $x$-axis.

**Solution.** Find each standard matrix, then compose them.

1. Stretch vertically by a factor of 4.

    $$A_1 = \left[\begin{array}{rr}1&0\\0&4\end{array}\right]$$

2. Rotate by $270^\circ$. We can have MATLAB calculate the matrix for us

    ````{margin}
    ```{note}
    The MATLAB functions `sin` and `cos` require radians. To use degrees instead, MATLAB has the functions `sind` and `cosd`.
    ``` 
    ````

    ```
    R = [ cosd(270) -sind(270) ; sind(270) cosd(270) ]
    ```

    which produces the correct standard matrix

    $$A_2 = R = \left[\begin{array}{rr}0&1\\-1&0\\\end{array}\right]$$

3. Reflect across $x$-axis.

    $$A_3 = \left[\begin{array}{rr}1&0\\0&-1\\\end{array}\right]$$
    
    

    
    
    
    



A1 = [ 1 0 ; 0 4 ]
A2 = [ cosd(270) -sind(270) ; sind(270) cosd(270) ]
A3 = [ 1 0 ; 0 -1 ]

When we compose these standard matrices, we find the standard matrix for the entire transformation.

A = A3 * A2 * A1