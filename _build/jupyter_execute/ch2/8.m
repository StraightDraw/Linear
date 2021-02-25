# 2.8 Bases as Coordinate Systems

The standard basis vectors are the columns of the $n\times n$ identity matrices which are generally referred to as $I_n$.

##  Identity matrix and standard basis for $\mathbb R^2$:

I2 = eye(2)

We refer to the standard basis vectors as $\vec e_1$ and $\vec e_2$.

e1 = I2(:,1)

e2 = I2(:,2)

##  Identity matrix and standard basis for $\mathbb R^3$

I3 = eye(3)

Notice that we still use the vectors $\vec e_1$ and $\vec e_2$ even though we are referring to 3-component vectors now.

e1 = I3(:,1)

e2 = I3(:,2)

e3 = I3(:,3)

## Alternate basis $\mathcal B$

Any set of linearly independent vectors $\{\vec v_1,\vec v_2, \dots , \vec v_m \}$ may serve as a basis for the subset it spans. For example, suppose that the vectors $\{\vec v_1,\vec v_2, \vec v_3 \}$ all live in $\mathbb R^3$ and that they are linearly independent. Then, we can use 

$$\mathcal B = \{\vec v_1,\vec v_2, \vec v_3 \}$$

as the basis for $\mathbb R^3$. To see why, let's create a linearly independent set.

### Example: Alternate basis for $\mathbb R^3$

Suppose that we have the following vectors:

$$\vec v_1 =\left[\begin{array}{r}-1\\1\\0\\\end{array}\right],\vec v_2=\left[\begin{array}{r}1\\9\\5\\\end{array}\right],\vec v_3=\left[\begin{array}{r}-1\\-1\\-2\\\end{array}\right] \hspace{1cm}\text{and} \hspace{1cm}\vec w=\left[\begin{array}{r}-3\\5\\2\\\end{array}\right]$$

#### Verifying $\{\vec v_1,\vec v_2, \vec v_3 \}$ is a basis for $\mathbb R^3$

Let's create a matrix whose columns are the candidates for the basis vectors, then row-reduce.

B = [-1 1 -1 ; 1 9 -1 ; 0 5 -2 ]

rref(B)

Because we have 3 pivots, we know the $\text{Span}\{\vec v_1,\vec v_2, \vec v_3 \}$ is a 3-dimensional subspace of $\mathbb R^3$, and the only 3D subspace of $\mathbb R^3$ is $\mathbb R^3$ itself.

#### Finding the $\mathcal B$-coordinates of a point

We want to determine how to write the vector $\vec w$ as a linear combination of the basis vectors. The coordinates $c_1, c_2, c_3$ will be the coefficients of the linear dependence relation when we solve the vector equations

$$c_1\vec v_1+c_2\vec v_2+c_3 \vec v_3=\vec w$$

which is equivalent to the matrix equations

$$B\vec c = \vec w$$

where the matrix $B$ has as its columns the vectors from the basis $\mathcal B$. To do so, we row reduce the augmented matrix.

B = [-1 1 -1 ; 1 9 -1 ; 0 5 -2 ]
w = [-3 ; 5 ; 2]

We augment the matrix and row reduce $[B,\vec w]$.

A = [ B, w ]

rref(A)

The linear dependence relation tells use the linear combination of the basis vectors that will produce $\vec w$.

$$-4\vec v_1 +(0)\vec v_2 +\vec v_3 = w \hspace{1cm}\implies \hspace{1cm} \vec c = \left[\begin{array}{r}-4\\0\\1\\\end{array}\right]$$

We can verify using the columns of matrix $B$.

b1 = B(:,1)
b3 = B(:,3)
-4 * b1 + b3

The $\mathcal B$-coordinates of the vector $\vec w$ are the coefficients of the linear dependence relation. This means we have

$$\vec w_\mathcal B = \left[\begin{array}{r}-4\\0\\1\\\end{array}\right]_\mathcal B$$

where the subscript indicates the corrdinates used to represent the vector. To convert the vector back to standard coordinates, we simply multiply the matrix $B$ by the coordinates from the linear dependence relation.

B * [ 4 ; 0 ; -1]