# 4.2 Cofactor Expansions

Most linear algebra courses and textbooks define the determinant in terms of cofactor expansion, then mention how the determinant can also be found using row operations and the fact that the determinant of a triangular matrix is the product of its diagonals. Cofactors reduce the dimension of the matrices we need to find the determinant by one level. A $4\times 4$ determinant is composed of four cofactors, each of which includes a $3\times 3$ determinant.

````{warning}
Finding determinants bycofactor expansion is easily understood and easily programmed but terribly inefficient.
````

Minor
: Let $A$ be an $n\times n$ matrix. The $(i,j)$ *minor*, denoted $A_{ij}$, is the $(n−1)\times(n−1)$ matrix obtained from $A$ by deleting Row $i$ and Column $j$.

Cofactor
: The $(i,j)$ cofactor $C_{ij}$ is defined in terms of the minor by

    $$C_{ij} = (−1)^{i+j}\det(A_{ij})$$

## Example

The process is quite easy to understand from an example. We will show the cofactor expansion across the first row of matrix M.

$$M = \left[\begin{array}{rrr}6&1&4\\0&0&3\\8&0&1\\\end{array}\right]$$

**The Process**

* Since $m_{11}=6$, we multiply it by the $C_{11}$ cofactor.
* Since $m_{12}=1$, we multiply it by the $C_{12}$ cofactor.
* Since $m_{13}=4$, we multiply it by the $C_{13}$ cofactor.
* The sum of these products is the determinant.

$$\begin{align*}
\det(M) &= 6 \det\left( \left[\begin{array}{rr}0&3\\0&1\\\end{array}\right] \right) - \det\left( \left[\begin{array}{rr}0&3\\8&1\\\end{array}\right] \right) + 4 \det\left( \left[\begin{array}{rr}0&0\\8&0\\\end{array}\right] \right)\\
&= 6 (0) - 24 + 4 (0)\\ &= -24
\end{align*}$$

which we can verify using MATLAB's determinant function.

M = [ 6 1 4 ; 0 0 3 ; 8 0 1 ];
det(M)

## Choosing the best row or column for cofactor expansion

Any time we can avoid calculating a determinant, the cofactor expansion process becomes strikingly simpler. Students quickly learn to scan for the row or column with the most zeros. Consider the situation if we expand across the second row.

$$\begin{align*}
\det(M) &= - (0) \det\left( \left[\begin{array}{rr}*&*\\*&*\end{array}\right] \right) + (0) \det\left( \left[\begin{array}{rr}*&*\\*&*\end{array}\right] \right) - 3 \det\left( \left[\begin{array}{rr}6&1\\8&0\\\end{array}\right] \right)\\
&= 0+0 - 3(8) \\ &= -24
\end{align*}$$

We can ignore any determinant (cofactor) where the corresponding matrix entry is zero. The situation is identical if we expand down the middle column:

$$\begin{align*}
\det(M) &= - (1) \det\left( \left[\begin{array}{rr}0&3\\8&1\\\end{array}\right]\right) + (0) -(0)\\
&= -(1)(24) + 0 - 0 \\ &= -24
\end{align*}$$

## Calculating minors in MATLAB

Deleting a row or column in MATLAB requires setting it equal to the empty matrix. For example, to calculate the minor corresponding to the 1st row, 2nd column, we delete the 1st row first, then the 2nd column.

M(1,:)=[]

M(:,2)=[]

````{warning}
We cannot complete the calcualtion of a minor in one MATLAB step.
````

M(1,2)=[]

To make life a bit easier, I created a function called `minor` which is [explained in the appendix](../dix/6) and shown below.

%%file minor.m

function myMatrix = minor(A,i,j)
    arguments
        A (:,:,:)
        i (1,1) {mustBeInteger, mustBePositive}
        j (1,1) {mustBeInteger, mustBePositive}
    end

A(i,:) = [];
A(:,j) = [];

myMatrix = A;
end

## Example with a $4\times 4$ matrix

Find the determinant of matrix $B$ using cofactor expansion.

$$B = \left[\begin{array}{rrrr}-1&0&2&4\\0&1&-1&2\\0&0&2&0\\0&-1&0&0\\\end{array}\right]$$

We have a couple of options, but let's expand across the bottom row a let $d = \det(B)$.

B = [-1 0 2 4 ; 0 1 -1 2 ; 0 0 2 0 ; 0 -1 0 0 ];
b = (-1) * minor(B,4,2)

Because we were careful to include the sign of the cofactor and multiply by the $b_{42}$ entry, the determinant of the original matrix is simply the determinant of this $3\times 3$ matrix which can be evaluated using only one $2\times 2$ determinant.

(-1) * det(minor(b,1,1))

We can verify our work.

det(B)

Finding determinants using cofactor expansion is very much a pencil-and-paper calculation for most mathematics students, but hopefully the use of the `minor` function will help you see exactly what is happening. You should practice taking determinants using cofactor expansion when the matrices are not filled with zeros.

Still, whenever possible, use row reduction methods instead of cofactor expansions.


```{toctree}
:hidden:
:titlesonly:


02/1
```
