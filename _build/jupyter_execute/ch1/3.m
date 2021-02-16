# 1.3 Parameterized Solutions

## Example 1

### Basic and Free Variables

Consider the following example that might occur after row-reducing an augemented matrix:

$$A = \left[\begin{array}{rrr|r}-2&2&0&6\\0&0&-1&2\\\end{array}\right]$$



We have two pivots, $b_{11} = -2$ and $b_{23} = -1$. The pivot columns correspond to *basic* variables while the other columns correspond to *free* variables. Let's solve as far we as we can.

````{tip}
Usually, we back-substitute, starting from bottom-right and working our way back up toward top-left.
````

Cleary, 

$$x_3 = - 2$$

and $x_2$ is a free variable, but the best we can do for $x_1$ is:

$$-2x_1 + 2x_2 = 6$$

We solve for the basic variables in terms of any free variables.

$$x_1 = -3 + x_2$$

### Parameterized Solutions
Now we know the solutions have a very specific form. The Margalit and Robanoff textbook uses the following notation to express it:

$$(x_1,x_2,x_3) = (-3 +x_2, x_2, -2)$$

In the column-vector notation we have been using:

$$\vec x = \left[\begin{array}{rrr} -3 & + & x_2 \\ && x_2 \\ -2 && \end{array}\right]$$

or

$$\vec x = \left[\begin{array}{r} -3\\ 0 \\ -2\end{array}\right] + \left[\begin{array}{rrr} x_2 \\ x_2 \\ 0 \end{array}\right]$$ 

which, after factoring out $x_2$, is equivalent to the vector equations

$$\vec x = \left[\begin{array}{r} -3\\ 0 \\ -2\end{array}\right] + \left[\begin{array}{rrr} 1 \\ 1 \\ 0 \end{array}\right]x_2$$ 

where the $x_2$ can be any real number. Since $x_2$ is a free variable, then we can plug any value for it that we like, and the result will still be a solution to our linear system.

## Example 2

$$B = \left[\begin{array}{rrr|r}15&9&-4&-17\\-5&-3&4&11\\0&0&0&1\\\end{array}\right]$$

The steps in the code block will row-reduce the augmented matrix. Only the result is shown below.

````{tip}
Placing a semicolon at the end of a line tells MATLAB to execute that line but suppress the result.
````

B= [ 15     9    -4   -17 ; -5    -3     4    11 ; 0     0     0     1 ];
B([1 2],:) = B([2 1],:);
B(2,:) = B(2,:) + 3 * B(1,:)

The bottom row of the matrix 

$$A = \left[\begin{array}{rrrr}-5&-3&4&11\\0&0&8&16\\0&0&0&1\\\end{array}\right]$$

claims that $0 = 1$ which is not possible, which means there are no solutions to this linear system. 

## Example 3

Suppose we have the following REF of the augmented matrix

$$C = \left[\begin{array}{rrrrr|r}3&-3&0&9&0&6\\0&0&1&5&0&1\\0&0&0&0&5&5\\\end{array}\right]$$

where we see basic variables $x_1, x_3, x_5$ and free variables $x_2, x_4$. Then $x_5 = 1$,

$$x_3 = 1 - 5x_4$$

and

$$3x_1 = 6 + 3x_2 - 9x_4$$

which simplifies to

$$x_1 = 2 + x_2 - 3x_4$$

Using the Margilit and Robanoff notation: $(x_1,x_2,x_3,x_4, x_5) = (2+x_2 -3x_4,x_2,1-5x_4,x_4,5)$, but we will use the expanded form shown below in this supplement.

````{margin}
```{warning}
We have **not** learned about vectors and vector operations. That's in chapter 2, but the vector arithmetic I'm using is not difficult.
```
````


This means our solutions will have the form:

$$\vec x = \left[ \begin{array}{ccccc}2 & +x_2 & -3x_4\\ &x_2&\\1 && -5x_4 \\ &&x_4 \\ 5&&\end{array}\right]= \left[\begin{array}{r} 2 \\ 0 \\ 1 \\ 0 \\ 5\end{array}\right] + \left[\begin{array}{c} x_2 \\ x_2 \\ 0 \\ 0 \\ 0\end{array}\right] + \left[\begin{array}{c} -3x_4 \\ 0 \\ -5x_4 \\ x_4 \\ 0\end{array}\right] $$ 

which simplifies, after factoring, to

$$\vec x = \left[\begin{array}{r} 2 \\ 0 \\ 1 \\ 0 \\ 5\end{array}\right] + \left[\begin{array}{r} 1 \\ 1 \\ 0 \\ 0 \\ 0\end{array}\right]x_2 + \left[\begin{array}{r} -3 \\ 0 \\ -5 \\ 1 \\ 0\end{array}\right]x_4 $$ 




```{toctree}
:hidden:
:titlesonly:


03/1
03/2
```
