# 4.1 Determinants: Definition

## Definition
````{margin}
```{warning}
Most textbooks define determinants using the cofactor expansion process shown in Section 4.2. Margalit's treatment is quite unique but helps us comprehend what the determinant actually means.
```
````

The Margalit text defines the determinant as a function whose domain is the set of all square matrices and whose range is the real numbers. This function, denoted as $\det(A)$, has four defining properties:

1. Doing a row replacement on $A$ does not change $\det(A)$.
2. Scaling a row of $A$ by a scalar $c$ multiplies the determinant by $c$.
3. Swapping two rows of a matrix multiplies the determinant by $−1$.
4. The determinant of the identity matrix $I_n$ is equal to $1$.


## Example

We don't need to know how to calculate determinants, yet. MATLAB already knows. We can experiment with row operations and see the impact that they have on the determinant. Remember, we do know that the determinant of a $2\times 2$ matrix

$$M = \left[\begin{array}{rr}a&b\\c&d\\\end{array}\right]$$

is given by

$$\det(M) = ad-bc$$

Let's begin with a $3\times 3$ example matrix $M$.

$$M = \left[\begin{array}{rrr}4&0&-2\\2&1&5\\3&1&4\\\end{array}\right]$$

First, let's have MATLAB calculate the determinant.

A = [4 0 -2 ; 2 1 5 ; 3 1 4 ]
det(A)

### 1. Row Swaps

Let's explore what happens when we swap two rows, say, the first and second.

a = A;
a([1 2],:) = a([2 1],:)
det(a)

The resulting determinant has the opposite sign, but same absolute value. Let's swap rows and 2 and 3 to see if the pattern holds.

a = A;
a([2 3],:) = a([3 2],:)
det(a)

#### Conclusion: Row swaps change the sign of the determinant.

If we do row swaps one at a time, then each one appears to change the sign of the determinant, but not it's absoluate value. This is what Margalit refers to as defining property 3.

### 2. Row Replacement

Let's explore what happens when we replace a row with the sum of itself and the scalar multiple of another row. For this example, let's use the following:

$$R_2 = R_2 - \frac{1}{2}R_1$$

This should be the first step in row-reducing $M$ and produce a zero below the top-left pivot of $4$.

a = A;
a(2,:) = a(2,:) - 0.5 * a(1,:)
det(a)

This result is fascinating. Despite making what feels like a considerable change to matrix $M$, the determinant has not change. Since this is the most-used row operation, we now know that row-reduction does not have to change the determinant very much. Let's continue on to REF and see what happens to the determinant.

a(3,:) = a(3,:) - (3/4) * a(1,:)
a(3,:) = a(3,:) - a(2,:)
det(a)

#### Conclusion: Row replacements do not affect the determinant.

The Margalit text refers to this as defining property 1, and it is perhaps the most important defining property of them all.

````{margin}
```{tip}
We need to use row swaps when we have zeros in pivot positions as in 

$$\left[\begin{array}{rrr}0&1&0\\2&0&0\\0&0&2\\\end{array}\right]$$
```
````

We row-reduced all the way to REF without affecting the determinant at all, and not by accident. In fact, we can **always** row-reduce to REF using only row replacements and, sometimes, row swaps.

````{note}
If $A$ is in REF, then $\det(A)$ is equal to the product of the main diagonal entries.

$$\det(A)= 4(1)\left(-\frac{1}{2}\right)=-2$$
````

### 3. Mutliplying a row by a scalar

Even though we don't need this particular row operation to reduce to REF, understanding what it does will help us visualize what the determinant is. Let's multiply through Row 1 by $\frac{1}{4}$.


a = A;
a(1,:) = a(1,:) / 4
det(a)

We find that the new determinant is one-fourth of the original determinant, so the determinant has also been scaled by the scalar $\frac{1}{4}$ that we used.

#### Conclusion: multiplying a row by a scalar also scales the determinant by the same amount.

The Margalit text refers to this as defining property 2.

## Triangular Matrices

A triangular matrix is one which has only zeros above or below the main diagonal.

$$ U = \left[\begin{array}{rrr}1&1&1\\0&3&3\\0&0&4\\\end{array}\right]$$

For example, the matrix $U$ above is called *upper triangular* since it's only non-zero entries are on the main diagonal or above it. The matrix $L$ below is an example of a *lower triangular* matrix.

$$L = \left[\begin{array}{rrr}-2&0&0\\2&4&0\\-1&-2&2\\\end{array}\right]$$

Any matrix that is *both* upper and lower triangular is called a *diagonal* matrix.

````{tip}
**Key Fact**. The determinant of a triangular matrix is the product of its main diagonal entries.
````

## Finding the determinant of matrix $M$

Following the idea shown in the examples above and using the Key Fact above

1. Row reduce $M$ to REF without scaling any rows.
2. Track $k$, the number of row swaps needed.
3. Calculate product of main diagonal entries and sign:

$$\det(M) = (m_{11})(m_{22})\dots (m_{nn})(-1)^k$$

### Example

Find the determinant of matrix $M$.

$$M = \left[\begin{array}{rrr}0&5&-1\\3&-2&3\\2&2&0\\\end{array}\right]$$

#### Row swap: $k = 1$

M = [ 0 5 -1 ; 3 -2 3 ; 2 2 0];
m = M;
m([1 3],:) = m([3 1],:)

#### Row replacements

m(2,:) = m(2,:) - (3/2) * m(1,:)

m(3,:) = m(3,:) + m(2,:)

Calculate product of main diagonal entries and adjust sign using $k=1$.

$$\det(M) = (2)(-5)(2)(-1)^k = -20(-1)^1=20$$

det(M)

Both methods agree, MATLAB's calculation based on the original matrix $M$ and our method using row reduction.