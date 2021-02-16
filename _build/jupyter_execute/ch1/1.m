# 1.1 Systems of Linear Equations

The Margalit and Robanoff [Linear Algebra](https://textbooks.math.gatech.edu/ila/systems-of-eqns.html) textbook uses this section to provide motivation for solving linear systems along with a geometric visualization of what a solution might look like. There isn't much MATLAB can help with, here, but you should read and interact with this section to help you understand it.

The key point is that we can solve huge systems of equations nearly as easily as simple ones we solved in high school algrebra.

$$\begin{array}{rcccccccc}
     5x  & + &   y  & + &   5z  &  = & 11 \\
    -x   & + &      & + &   2z  &  = & 0  \\
    -x   & + &      & + &   4z  &  = & 2  \\
\end{array}$$

The linear system above corresponds to the matrix equations
 
$$A\vec x = \vec v$$
 
where  $A$ is the coefficient matrix, $\vec v$ is the right hand side, and $\vec x$ is the solution vector we hope to find. If we take the coefficients of the system, then

$$A = \left[\begin{array}{rcc}
     5 & 1 & 5\\
    -1 & 0 & 2\\
    -1 & 0 & 4
\end{array}\right]$$

and 

$$\vec v = \left[\begin{array}{r} 11 \\ 0 \\ 2 \end{array}\right]$$
 
 


The matrix algebra is much easier than solving algebraically, and the next section takes us through the three elementary row operations the application of which do **not** change the solutions of the system.