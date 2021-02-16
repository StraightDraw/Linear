# 2.6 Subspaces

The visualizations in the textbook's Section 2.6 are very valuable. You should spend time with all of the interactive modules and take time with the definitions and theorems.

The key task in the section is finding the solution set of the *null space*.

Null Space
: The set of all solution vectors to the homogenenous equations.



## Finding the null space

### Example 1. Find the null space of the matrix $A$.

$$A = \left[\begin{array}{rrr}4&-18&-21\\-4&30&33\\0&1&1\\\end{array}\right]$$

A = [  4   -18   -21 ;
      -4    30    33 ;
       0     1     1 ]

To dtermine the null space, we need to augment the matrix $A$ with the zero vector.

[A,zeros(3,1)]

rref([A,zeros(3,1)])

Now we write the solution set in vector form. The first step is to write all basic variables in terms of the free variables.

$$\begin{align*} x_1 &= \frac{3}{4}x_3 \\ x_2 &= -x_3 \end{align*}$$

So the solution set is of the form:

$$ \vec x = \left[\begin{array}{r}\frac{3}{4}\\-1\\1\\\end{array}\right]$$

To verify the solution is correct, we can create the vector $\vec x$ and evaluate what happens when we take scalar multiples of it and multiply by $B$.

x = [ 3/4 ; -1 ; 1]

A * (5 * x) 

This isn't proof that *any* scalar multiple of $\vec x$ is a solution, but we can check several randomly chosen scalar multiples.

for i = 1:10
    k = randi([-50 100],1,1);
    A * k * x
end

### Example 2. Find the null space of the matrix $B$.

$$ B = \left[\begin{array}{rrr}-1&4&1\\-3&12&7\\0&1&-2\end{array}\right] $$

B = [ -1 4 1 ; -3 12 7 ; 0 1 -2 ]
rref([B, zeros(3,1)])

Clearly, the only solution to the homogeneous equations is the zero vector which makes sense. Because there are three pivots, there are no free variables. We use the notation below for the null space of a matrix.

$$\text{Null}(B)=\vec 0$$

## Example 3

Find the null space for matrix $C$.

$$C = \left[\begin{array}{rrrr}0&0&1&-2\\-12&43&27&9\\-2&7&4&1\\\end{array}\right]$$

Again, we need the matrix C.

C = [  0     0     1    -2 ;
     -12    43    27     9 ;
      -2     7     4     1 ]
[C , zeros(3,1)]
c = rref([C , zeros(3,1)])

Clearly, $x_1 = -27 x_4$, $x_2 = -9 x_4$ and $x_3 = -2 x_4$ which is closely related to the fourth column of $c$.


x = -c(:,4);
x(4) = 1

## Column Space

Column space
: The column space of an $m\times n$ matrix $A$ is the subspace of $\mathbb R^m$ spanned by the columns of $A$.



A
rref(A)

The matrix $A$ has two linearly independent columns corresponding to its two pivots as shown when converted to RREF.

v1 = A(:,1)
v2 = A(:,2)

Then, the column space of $A$ is the span of the vectors $v_1,v_2$.

$$\text{Col}(A) = \text{Span} \left\{ \ \left[\begin{array}{r}4\\-4\\0\\\end{array}\right], \left[\begin{array}{r}-18\\30\\1\\\end{array}\right] \ \right\}$$


```{toctree}
:hidden:
:titlesonly:


06/1
```
