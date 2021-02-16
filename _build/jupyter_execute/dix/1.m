# A.1 Generate $n\times n$ example matrix that is invertible

Generating an example square matrix in MATLAB is easy. The code

```
A = randi(4,5)
```

will produce something like

A = randi(4,5)

where all the entries are postive and less than four. For most linear algebra example matrices, this isn't all that helpful, like when we want invertible matrices the columns of which when treated as vectors will form a linearly independent set.

## The `geninvert` function code

````{margin}
```{tip}
The last line executes a "copy this matrix to the clipboard" command. Now I can paste the result using `Ctrl+V` into a test or quiz I'm creating.
```
````


```
function myMatrix = geninvert(N)
    arguments
        N (1,1) {mustBeInteger, mustBePositive}
    end
    n = min(8, N)

A=randi([-2 5],n);

    while (abs(det(A)) > 5) | (abs(det(A)) < .1)
        A=randi([-2 5],n);
    end

myMatrix = A;
clipboard('copy',myMatrix);
end
```

## Breaking down the sections

### Argument validation

The first section constrains the argument $N$, to a positive integer.

````{margin}
```{note}
We're using MATLAB's onboard error-text to alert users to the problem when they input something whacky like 3.14.
```
````

```
function myMatrix = geninvert(N)
    arguments
        N (1,1) {mustBeInteger, mustBePositive}
    end
    n = min(8, N)
```

The arguments sets up $N$ to be a positive integer. Weneed it to be a small number, or the function can get caught in a nearly infinite loop, which is why we use the smaller of the two integers, the user-input value or 8.

### Loop initialization

We have to initialize a matrix since we're using a while loop (see below).

```
A=randi([-2 5],n);
```

````{margin}
If we execute the code block 

```
geninvertz(5,6)
```

we get something like this:

$$\left[\begin{array}{rrrrr}1&0&1&-2&0\\2&4&-1&-1&0\\-1&3&-2&2&0\\5&-1&-2&0&2\\0&-1&0&1&0\\\end{array}\right]$$

````



### While loop

We have two conditions the while loop checks before executing which together force the determinant to be non-zero and less than or equal to 5.

```
    while (abs(det(A)) > 5) | (abs(det(A)) < .1)
        A=randi([-2 5],n);
    end
```

The condition

```
abs(det(A)) < .1
```

works as if we were using

```
abs(det(A)) == 0
```

but prevents a funky error. Some determinants that are actually zero evaluate to a non-zero value like $\text{e-}16$. This does not work in general, but here we know we have created a matrix with only integer values, so it's determinant must be an integer, too.

## The `geninvertz` function code

Often, we prefer a more sparse matrix, so we can force some extra zeros in with this version. It works exactly the same as before, we can specify how total zeros we would like. We can randomly get more than we ask for, but not less.

```
function myMatrix = geninvertz(N,Z)
    arguments
        N (1,1) {mustBeInteger, mustBePositive}
        Z (1,1) {mustBeInteger, mustBePositive}
    end
    n = min(8, N);
    z = min(8, Z^2 - Z);

zeroMatrix = zeros(n);
countZeros = 0;
A=randi([-2 5],n);

% Create random matrices until det(a) <= 5 but not zero
while (abs(det(A)) > 5) | (abs(det(A)) < .1) | (countZeros < z)
    A=randi([-2 5],n);
    countZeros = 0;
    for i = 1:n
        for j = 1:n
            if A(i,j)==0
                countZeros = countZeros + 1; 
                
            end
        end
    end

myMatrix = A;
clipboard('copy',myMatrix);
end
```