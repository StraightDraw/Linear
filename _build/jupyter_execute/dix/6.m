# A.6 Cofactor Expansion Tool

When working with determinants by cofactor expansion, having a tool to quickly produce the minors of a matrix is invaluable.

## The `minor` function code

```
function myMatrix  = minor(A,i,j)
    % Input Validation
    arguments
        A (:,:,:)
        i (1,1) {mustBeInteger, mustBePositive}
        j (1,1) {mustBeInteger, mustBePositive}
    end

% Delete row i
A(i,:) = [];

% Delete colun j
A(:,j) = [];

% Assign result to cofactor matrix
myMatrix = A;
end
```

## Breaking down the sections

We force the user to input a matrix and ask what row and column to delete.

```
    arguments
        A (:,:,:)
        i (1,1) {mustBeInteger, mustBePositive}
        j (1,1) {mustBeInteger, mustBePositive}
    end
```

We delete row $i$ and column $j$ in turn by setting them equal to an empty matrix.

```
A(i,:) = [];

A(:,j) = [];
```

We return the deleted matrix $A$ as the output of the function.

```
myMatrix = A;
```