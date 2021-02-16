# Chapter 2

## Systems of Linear Equations: Geometry

````{warning}
Reading these materials and doing the excercises is **not enough** to understand the course material. You must also read and study the corresponding chapters and sections in the Margalit and Rabinoff [*Linear Algebra* online textbook](https://textbooks.math.gatech.edu/ila/chap-geometry.html).
````
The information below is like a study guide though much of the information is copied directly from Margalit and Rabinoff. You will be quizzed and tested not only on how to perform various tasks in MATLAB, but on your understanding of the visualizations and discussions in the textbook. Be sure to study these concepts prior to quizzes and tests.

### 2.1 Vectors

1. Learn how to add and scale vectors in $\mathbb{R}^n$, both algebraically and geometrically.
2. Visualize 
    1. Linear combinations
    2. Vector addition
    3. Vector subtraction, and
    4. scalar multiples of vectors.

**Vocabulary words.** Vector, linear combination, scalar multiple.


### 2.2 Vector Equations and Spans

1. Understand the equivalence between a system of linear equations and a vector equation.
2. Learn the definition of $\text{Span}\{x_1,x_2,\dots,x_k\}$, and how to draw pictures of spans.
3. Key Task: Solve a vector equation using augmented matrices to determine if a vector is in a span.
4. Visulize
    1. An inconsistent system of equations
    2. A consistent system of equations
    3. Spans in $\mathbb{R}^2$ and $\mathbb{R}^3$.

**Vocabulary words.**  Vector equation, span.

### 2.3 Matrix Equations

1. Understand the equivalence between a system of linear equations, an augmented matrix, a vector equation, and a matrix equation.
2. Key Task: multiply a vector by a matrix (two ways).
3. Characterize the vectors $\vec b$ such that $A\vec x = \vec b$ is consistent, in terms of the span of the columns of $A$.
4. Characterize matrices $A$ such that $A\vec x = \vec b$ is consistent for all vectors $\vec b$.
5. Visualize the set of all vectors $\vec b$ such that $A\vec x = \vec b$ is consistent.

**Vocabulary words.**  Matrix equation, row vector, column vector, consistent, inconsistent.

### 2.4 Solution Sets

1. Understand the relationship between the solution set of $Ax = \vec 0$ and the solution set of $Ax = \vec b$.
2. Understand the difference between the solution set and the column span.
3. Key Tasks
    1. Write solutions to matrix equations in parametric vector form
    2. Write the solution set of a homogeneous system as a span.
4. Visualize the solution set of a homogeneous system, the solution set of an inhomogeneous system, and the relationship between the two.

**Vocabulary words.** Homogeneous, inhomogeneous, trivial vs. nontrivial solutions.

Review the section called [Solution Sets and Column Spans](https://textbooks.math.gatech.edu/ila/solution-sets.html#solnsets-ss-and-cs) carefully.


### 2.5 Linear Independence

1. Understand the concept of linear independence.
2. Learn two criteria for linear independence.
3. Understand the relationship between linear independence and pivot columns / free variables.
4. Key Tasks:
    1. Test if a set of vectors is linearly independent.
    2. Find an equation of linear dependence.
5. Visualize sets of vectors in $\mathbb{R}^2$ or $\mathbb{R}^3$ and whether or not they are linearly independent.

**Vocabulary words.** Linear dependence relation / equation of linear dependence, pivots, free variables, linearly independent, linearly dependent.

### 2.6 Subspaces

1. Learn the definition of a subspace.
2. Learn the canonical examples of subspaces.
3. Learn to write a given subspace as a column space or null space.
4. Key Tasks: 
    1. Determine whether or not a subset is a subspace.
    2. Compute a spanning set for a null space.
5. Visualize whether a subset of $\mathbb{R}^2$ or $\mathbb{R}^2$ is a subspace or not.

**Vocabulary words.** Subspace, column space, null space.

### 2.7 Basis and Dimension

1. Understand the definition of a basis of a subspace.
2. Understand the basis theorem.
3. Key Tasks: 
    1. Find the basis for a column space.
    2. Find the basis for a null space.
    3. Find the basis of a span.
4. Visualize the  basis of a subspace of $\mathbb{R}^2$ or $\mathbb{R}^2$.

**Vocabulary words.**  Basis, dimension.

### 2.8 Bases as Coordinate Systems

1. Learn to view a basis as a coordinate system on a subspace.
2. Key Tasks: 
    1. Compute the $\mathcal{B}$-coordinates of a vector.
    2. Compute the usual coordinates of a vector from its $\mathcal{B}$-coordinates.
3. Visualize the $\mathcal{B}$-coordinates of a vector using its location on a nonstandard coordinate grid.

**Vocabulary words.**  $\mathcal{B}$-coordinates

### 2.9 The Rank Theorem

1. Learn to understand and use the rank theorem.
2. Visualize the rank theorem.

**Vocabulary words.** Rank, nullity.


```{toctree}
:hidden:
:titlesonly:


1
2
3
4
5
6
7
8
9
```
