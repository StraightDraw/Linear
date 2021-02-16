# 1.3.1 Lab 2

Your assignment is to solve three linear systems, and write the solutions in parametric form (vector form). To help entering vectors in Dollar Sign Math (LaTeX), be sure to download and use the `dsm` script included in the Lab Assignment. You can also access the [code for the script here](/../dix/3.ipynb).


````{note}
Each matrix below is an augmented matrix that represents a linear system that can be solved.
````

## Part I: RREF with solutions in vector form

The augmented matrices in this section have already been row-reduced to REF. You must row-reduce all the way to RREF and solve for all basic variables in terms of the free variables. When that is complete, write the parameterized solutions in vector form.

If your birthday is in:

* January through April, do J.
* May through August, do M.
* September through December, do S.


J = [5 -1 -2  5  4 ;
     0 -1  5  5  1 ;
     0  0  0  5 -1 ] ;

M = [-2 -1  1  3 -2 ;
      0  0 -2 -1  4 ;
      0  0  0 -1  1 ] ;

S = [3 -1  3 -1  5 ; 
     0  3  0  2  4 ;
     0  0  0  2  1 ] ;

## Part II: REF, back-substitution and solutions in paramteric form

The matrices below are augmented matrices that represent linear systems. Solve the linear system but row-reducing to REF and back-substituting. You may also row-reduce to RREF, if you prefer. Write the solutions in vector form.

If your first name begins with:

* A through D, do A.
* D through J, do D.
* J through Z, do J.

A = [1  2   2   0 ;
     3  6  10  -2 ] ;

D = [4 -1 -2 -9 ;
     8 -2 -3 -7 ] ;

J = [-2  1 -1  0 ;
      2 -1  1  0 ] ;

## Part III: Solve

Using either method, find the solutions to the linear systems represented by the augmented matrix below, and write your solutions in vector form.

If your last name begins with:

* B through G, do B.
* H through Q, do H.
* R through Z, do R.
* A pick any of the three.

B = [ 0  0  3 -1  3  4 ;
      1  1  0  2  1  0 ;
     -1 -1  0 -2  4  5 ;
     -1 -1  0 -2  4  5 ] ;

H = [ 3 -2  2 -2  5  1 ;
      0  0  0  0 -1  0 ;
      9 -6  6 -6 11  3 ;
     12 -5 10 -3 24  7 ] ;

R = [ 1  1  2  5  -1  4 ;
      5  5 10 30  -5 19 ; 
     14 14 28 85 -14 53 ; 
      0  0  1 -2   2  5 ] ;