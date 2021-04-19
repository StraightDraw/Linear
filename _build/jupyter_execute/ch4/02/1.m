# 4.2.1 Lab 7

## Part I. Find determinant using row operations 

Transform the matrix to REF using only row swaps and row replacements. Show all steps in MATLAB. Then multiply the main diagonal entries and correct the sign based on number of row swaps needed.

````{warning}
You may not use the MATLAB `det()` function except to verify your solution.
````

If your birthday is in:

* January through April, do matrix $J$.
* May through August, do matrix $M$.
* September through December, do matrix $S$.

$$J = \left[\begin{array}{rrrr}2&3&0&4\\5&0&4&3\\4&5&-2&-1\\0&-2&2&1\\\end{array}\right]$$

J = [2 3 0 4 ; 5 0 4 3 ; 4 5 -2 -1 ; 0 -2 2 1 ];

$$M = \left[\begin{array}{rrrr}5&1&3&0\\2&0&0&3\\3&-2&2&5\\3&1&-1&4\\\end{array}\right]$$

M = [5 1 3 0 ; 2 0 0 3 ; 3 -2 2 5 ; 3 1 -1 4 ];

$$S = \left[\begin{array}{rrrr}3&-2&4&0\\2&3&0&-1\\0&-1&-2&3\\5&1&2&1\\\end{array}\right]$$

S = [3 -2 4 0 ; 2 3 0 -1 ; 0 -1 -2 3 ; 5 1 2 1 ];

## Part II. Find determinant using any method you prefer 

Show all steps in MATLAB. You may wish to use the function `minor` which is demonstrated in the MATLAB notes and can be [copied from the appendix](../../../dix/6).

````{warning}
You may not use the MATLAB `det()` function except to verify your solution.
````

If your first name begins with:

* A through C, do $A$.
* D through K, do $D$.
* J through Z, do $J$.

$$A = \left[\begin{array}{rrr}1&1&1\\0&0&2\\1&-1&0\\\end{array}\right]$$

A = [1 1 1 ; 0 0 2 ; 1 -1 0 ];

$$ D = \left[\begin{array}{rrr}0&1&3\\-1&0&4\\-1&-1&-1\\\end{array}\right]$$

D = [0 1 3 ; -1 0 4 ; -1 -1 -1 ];

$$J = \left[\begin{array}{rrr}0&3&1\\-1&4&1\\3&0&2\\\end{array}\right]$$

J =[0 3 1 ; -1 4 1 ; 3 0 2 ];

## Part III: Find determinant using any method you prefer 

Show all steps in MATLAB.

````{warning}
You may not use the MATLAB `det()` function except to verify your solution.
````
If your last name begins with:

* B through G, do B.
* H through Q, do H.
* R through Z, do R.
* A pick any of the three.

$$B = \left[\begin{array}{rrrr}0&-1&0&4\\4&0&0&0\\0&1&-1&0\\3&0&-1&3\\\end{array}\right]$$

B = [0 -1 0 4 ; 4 0 0 0 ; 0 1 -1 0 ; 3 0 -1 3 ];

$$H = \left[\begin{array}{rrrr}0&0&0&-1\\-1&-1&0&5\\0&1&0&0\\0&0&5&3\\\end{array}\right]$$

H = [0 0 0 -1 ; -1 -1 0 5 ; 0 1 0 0 ; 0 0 5 3 ];

$$R = \left[\begin{array}{rrrr}1&5&0&0\\1&4&0&1\\0&0&2&0\\0&0&5&1\\\end{array}\right]$$

R =  [1 5 0 0 ; 1 4 0 1 ; 0 0 2 0 ; 0 0 5 1 ];