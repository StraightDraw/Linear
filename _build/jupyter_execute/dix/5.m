# A.5 Timesaver

Perhaps it seems counterintutive to have a function to produce the matrix code for a MATLAB matrix. Won't MATLAB do that for us?

Yes and no. When using random generators to find good examples, we need a way to copy-paste the good examples into a notebook. That's what this function is used for, a big time-saver over trying to get the code using MATLAB commands before the random matrix generators overwrite it.

## The `codemat` function code

```
function myString = codemat(A)
    arguments
        A (:,:,:)
    end

% Loop criteria based on matrix dimensions
[m, n] = size(A);

myString = '[' ;

for i = 1:m
    for j = 1:n
        if j < n
            myString = strcat(myString, string(A(i,j)), {' '});
        elseif i < m
            myString = strcat(myString, string(A(i,j)), {' '}, ';', {' '});
        else 
            myString = strcat(myString, string(A(i,j)), {' '}, ']');
        end
    end
end

%Copy to clipboard for easy pasting
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

We initialize the string we are creating.

```
myString = '[' ;
```
The loop creates the rows of the matrix with elements in each row separated by spaces. A semicolon is placed at the end of each row.

```
for i = 1:m
    for j = 1:n
        if j < n
            myString = strcat(myString, string(A(i,j)), {' '});
        elseif i < m
            myString = strcat(myString, string(A(i,j)), {' '}, ';', {' '});
        else 
            myString = strcat(myString, string(A(i,j)), {' '}, ']');
        end
    end
end
```

We place the contents of myString into the clipbaord for easy copy-pasting into another notebook.

```
clipboard('copy', myString);
```