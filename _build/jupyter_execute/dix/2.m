# A.2 Generate example matrix suitable for row-reduction

My most-used example generator is the `genrowred` function which starts with a random matrix in REF, then does $n + m$ random row operations. 

````{warning}
Most $m\times n$ matrices created with integers suffer from the problem that row-reducing them by-hand often produces ugly denominators. 
````

The `genrowred` function itself calls several other functions, all of which are shown below.
 
````{margin}
```{tip}
The subroutines shown below use the `sample` command from the **Statistics and Machine Learning Toolbox** and also require the **Symbolic Math Toolbox**.
```
````

## The `genrowred` function code

```
function myMatrix = genrowred(M, N, k)
    % Input Validation
    arguments
        M (1,1) {mustBeInteger, mustBePositive}
        N (1,1) {mustBeInteger, mustBePositive}
        k (1,1) double = M + N;
    end
    % Additionally, n <= 8
    m = min(8, M);
    n = min(8, N);

% Initialize matrix C to ensure the while loop runs at least once
C = eye(2)*100*n*m;

while (sum(sum(C))) > max(100,10 * m * n ) | (sum(sum(isnan(C))) > 0)
    A = genpivots(m,n);
    B = fillAbovePivots(A);
    C = fillZeroCols(B);
    D = randRowOps(C,k);
end
myMatrix = D;
% Can use code below to add result to clipboard
clipboard('copy',myMatrix);
end
```

## Watch it run

````{margin}
```{note}
$A$ has pivots only.

$B$: integers above pivots.

$C$: integers in zero-columns.

An REF matrix $C$ results.
```
````

I executed the code block below and printed out the final matrices $A,B,C,D$ the function produced.

```
genrowred(3,5)
```

$$A = \left[\begin{array}{rrrrr}4&0&0&0&0\\0&4&0&0&0\\0&0&0&3&0\\\end{array}\right] \\ B = \left[\begin{array}{rrrrr}4&5&0&0&0\\0&4&0&-1&0\\0&0&0&3&0\\\end{array}\right] \\ C = \left[\begin{array}{rrrrr}4&5&0&3&0\\0&4&5&-1&0\\0&0&0&3&5\\\end{array}\right] $$

````{margin}
```{note}
$D$ is the result of $k=5$ random row operations on $C$. User can set $k$.
```
````

$$D = \left[\begin{array}{rrrrr}-40&-42&10&-17&25\\40&46&-5&16&-25\\4&5&0&3&0\\\end{array}\right]$$




## The Subroutines

### `genpivots`

```
function myMatrix = genpivots(M,N)
% Input Validation
    arguments
        M (1,1) {mustBeInteger, mustBePositive};
        N (1,1) {mustBeInteger, mustBePositive};
    end
    % Additionally, m,n <= 8
    m = min(10, M);
    n = min(10, N);

% Determine maximal square dimensions inside matrix
minLength = min(m,n);

% Random diagonal square matrix with dimension minLength
A = gendiag(minLength);

% Add rows or columns of zeros until matrix M has dimensions m x n
while ( length(A) < m )  | ( length(A) < n )
    if length(A) < m
        v = zeros(1,length(A(1,:)));
        A = [A;v];
    else
        v = zeros(length(A(:,1)),1);
        A = [A , v];
    end
end

    % Take zero-columns from end, inserts them randomly in between non-zero-columns.
    if m < n
        [m,n] = size(A);
        p = 1:length(A);
        q = p;
        r = max(m,n);
        s = min(m,n);
        t = r-s;
        v = sort(randsample(1:s,min(t,s)), 'descend');
        for k = v
            p = [p(1:k),p(end),p(k+1:end-1)];
        end
    A(:,q) = A(:,p);
    end

% Move all zero-rows to bottom of matrix, required for REF
myMatrix = zRows2btm(A);
end
```






````{margin}
Function `zRows2btm`
```
function myMatrix = zRows2btm(A)
[m,n] =size(A);

b = [];
t = [];

for i = 1:m
    if sum(A(i,:)) == 0
        b = [b,i];
    else
        t = [t,i];
    end
end
[t b];
A([1:m],:) = A([t b],:);
myMatrix = A;
```
````
### `fillAbovePivots`

```
function myMatrix = fillAbovePivots(A)
    arguments
        A (:,:,:)
    end

[m,n] = size(A);

for j = 1:n
        nZ = firstNonZero(A(:,j));
        if ( nZ <= m) & ( nZ > 1 ) & ( sum(A(:,j) ~= 0) )
            for i = 1:(nZ - 1)
                A(i,j) = randsample([-2:5],1);
            end
        end
    end
myMatrix = A;
end
```

### `fillZeroCols`

```
function myMatrix = fillZeroCols(A)
    % Input Validation
    arguments
        A (:,:,:)
    end
[m,n] = size(A);
for j = 2:n
    for i = 1:m
        if ( A(i,j) == 0) & ( sum(A(i,1:j)) ~= 0 )
            A(i,j) = randsample(-2:5,1);
    end
end
    
myMatrix = A;
% Can use code below to add result to clipboard
% clipboard('copy',myMatrix);
end
```

### `randRowOps`

````{margin}
RowOp1: Swap rows

RowOp2: Non-zero scalar $\times$ row

RowOp3: Replace row with of itself and scalar multiple of another row
````



````{margin}
`randRowOp1`

```
function myMatrix = randRowOp1(M)
[m,n] = size(M);
r = randsample(1:m,2);
p = r(1);
q = r(2);
M([p q],:) = M([q p],:);
myMatrix = M;
end
```
````

````{margin}
`randRowOp2`

```
function myMatrix = randRowOp2(M)
[m,n] = size(M);
k = randsample(1:m,1);
r = randsample(2:5,1);
M(k,:) = M(k,:) * r;
myMatrix = M;
end
```

````


````{margin}
`randRowOp3`

```
function myMatrix = randRowOp3(M)
[m,n] = size(M);
k = randsample(1:m,2);
p = k(1);
q = k(2);
r = randsample([-2:-1 2:3],1);
M(p,:) = M(p,:) + M(q,:)* r;
myMatrix = M;
end
```
````


```
function myMatrix = randRowOps(A,N)
    % Input Validation
    arguments
        A (:,:,:) 
        N (1,1) {mustBeInteger, mustBePositive}
    end
    % Additionally, n <= 8
    n = min(20, N);

[m,q] = size(A);
    
for i = 1:n
    k = randsample(1:6,1);
    if k == 1
        A = randRowOp1(A);
    else if k < 3
            A = randRowOp2(A);
        else
            A = randRowOp3(A);
        end
    end
end

for i = 1:m
    A(i,:) = A(i,:) / gcd(sym( A(i,:)));
end

myMatrix = A;
end
```