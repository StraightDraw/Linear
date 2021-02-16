# A.4 Dollar sign math for creating vectors from columns of matrix

Mathematicians have been using LaTeX for decades. Recently, the wider scientific community has embraced it, and hipper and younger folks are referring to it as dollar sign math. Conversion functions from MATLAB to DSM are incredibly useful for instructors creating tests, quizzes and other class materials.

Creating matrices is time-consuming enough in DSM, but what if you want to create five vectors? Even using my `dsm` function, that's five time the work. However, the following code creates an indexed set of vectors from the columns of a matrix.

````{margin}
```{note}
The `dsmvec` function calls the `dsm` function and will not work unless the `dsm` function is also saved in the same folder.
```
````

## The `dsmvec` function code

```
function myString  = dsmvec(A)
    % Input Validation
    arguments
        A (:,:,:)
    end
[m,n] = size(A);

% Create first vector
myString = strcat('v_1',' = ',dsm(A(:,1)) )

% Create last n-1 vectors
for j = 2:n
    myString = strcat(myString,', ','v_',string(j),'=',dsm(A(:,j)))
end

myString
clipboard('copy',myString);
end
```

## Breaking down the sections

We force the user to input a matrix, set the dimensions of that matrix to $m\times n$.

```
    arguments
        A (:,:,:)
    end
    [m, n] = size(A);
```

The first vector is always called $v_1$ using the code `v_1`. It does not need a comma before it, but we do need to initialize the variable `myString`. We accomplish all of that in one line.

```
% Create first vector
myString = strcat('v_1',' = ',dsm(A(:,1)) )
```

We use exactly the same string setup as before for each remaining indexed vector, but we add in a comma to separate the vectors.

```
% Create last n-1 vectors
for j = 2:n
    myString = strcat(myString,', ','v_',string(j),'=',dsm(A(:,j)))
end

```