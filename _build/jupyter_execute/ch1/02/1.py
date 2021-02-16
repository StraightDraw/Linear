# 1.2.1 Lab 1

This lab includes three problems. In each section, you will complete only one of the problems. Read the directions carefully. You must use MATLAB commands to accomplish the task, and you may not use the `rref` command except to check your work. You must show all steps.

When done, export your work as HTML or PDF and upload to the D2L Lab 1 assignment.

## Part I: REF

You must row-reduce one of the following matrices to REF.

If your birthday is in:

* January through April, do J.
* May through August, do M.
* September through December, do S.

You may use any variable you like. I had begun to run out, and using the same variable twice causes a good deal of confusion. If you prefer working with $M$ to the letter I gave you, switch to $M$.

J = [ 3     2 ;
      0    -1 ;
     -1     0 ;
      0    -1 ;
      3     1 ];
      

M = [ -1     0 ;
       0     1 ;
      -1     6 ;
       1    -6 ;
       0     1 ];

S = [ 9    -2 ;
     -4     1 ;
      1     0 ;
     -4     1 ;
      0    -1 ];

## Part II

You must row-reduce one of the following matrices to REF. Do not go further than REF. You can use text to show your algebra (back-substitution).

If your **last name** begins with:

* B through G, do B.
* H through P, do H.
* R through Z, do R.
* Pick any of the three.

B = [ 0     0     3    -1    -1 ;
      1    -2     7    -2    -4 ;
      0     0     3    -2    -1 ;
      0     5    -1    -1     1 ;
      0     0     0    -3     2 ];

H = [ -5     0     5    15    14 ;
       0     0     1     3     0 ;
       0     5    -1    -2     1 ;
       2     0    -2    -5    -5 ;
       0     0     2     6    -1 ];

R = [ 0     0     0    -6    -7 ;
     -1     0     2     4    19 ;
      0     1     0    13    16 ;
      0     2     0     5     8 ;
     -3     0     7    12    62 ];
 

## Part III: REF and solve

You must row-reduce one of the following matrices to REF and solve it. Each matrix below represents an augmented matrix. The first three columns are the coefficient matrix $A$. The last column is a vector $\vec v$. Your job is to find the vector $\vec x$ such that

$$A\vec x = \vec v$$

If your **first name** begins with:

* A through D, do A.
* E through J, do E.
* K through Z, do K.

You may use any variable letter you like. I had begun to run out because using the same variable twice in a dcoument can cause a good deal of confusion.

A = [ -6     2     0    -5 ; 
       0     0     0     1 ;
      -4     1     0    -3 ];      

E = [ -4   -10     3     3 ;
       0     1    -2     0 ;
       5    14    -3     0 ];
       

K = [ -6    -1   -14     0 ; 
       2     1     6     0 ;
       0     1     0    -1 ];