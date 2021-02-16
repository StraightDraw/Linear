# A.3 Dollar sign math matrices

Mathematicians have been using LaTeX for decades. Recently, the wider scientific community has embraced it, and hipper and younger folks are referring to it as dollar sign math. I've been using MATLAB long enough to know a quick converter function is massively helpful. If you have a matrix or vector in MATLAB, just use this function to get the DSM equivalent.

## The `dsm` function code

```
function myString = dsm(A)
    arguments
        A (:,:,:)
    end
    [m, n] = size(A);

%Typeset matrix brackets and array
beginString = '\left[\begin{array}';
endString = '\end{array}\right]';

% Create right-justified DSM columns
cString = '{';
    for i = 1:n
        if i==n
            cString = strcat(cString,'r}');
        else
            cString = strcat(cString,'r');
      end
    end

%Typeset the values in the matrix
myString=cString;

    for r = 1:m
        for c = 1:n
            if c==n
                myString = strcat(myString,num2str( A(r,c)),'\\ ');
            else
                myString = strcat(myString,num2str( A(r,c)),'&');
            end
        end
    end

% Concatenate beginning, middle and ending into one
myString = strcat(beginString, myString, endString);

% Copy to clipboard for easy pasting
clipboard('copy',myString);
end
```

## Breaking down the sections

We force the user to input a matrix, set the dimensions of that matrix to $m\times n$, and start the string that we need.

```
    arguments
        A (:,:,:)
    end
    [m, n] = size(A);

%Typeset matrix brackets and array
beginString = '\left[\begin{array}';
endString = '\end{array}\right]';
```

DSM vectors and matrices always look better when we use right-justified entries. The code below creates columns. What we need is the text $\text{\{rrrr\}}$ to create 4 right-justified columns.

```
% Create right-justified DSM columns
cString = '{';
    for i = 1:n
        if i==n
            cString = strcat(cString,'r}');
        else
            cString = strcat(cString,'r');
      end
    end
```

Now we need to take the actual values of the matrix and typeset them. In MATLAB, we have spaces between entries. In DSM, those into $\text{&}$. Instead of a semicolon to close out lines, DSM uses a double blackslash $\text{\\ \\}$.

```
%Typeset the values in the matrix
myString=cString;

    for r = 1:m
        for c = 1:n
            if c==n
                myString = strcat(myString,num2str( A(r,c)),'\\ ');
            else
                myString = strcat(myString,num2str( A(r,c)),'&');
            end
        end
    end
```
The `if` part determines if the entry is the last one in its row. If so, it adds a double backslash. The `else` part puts in the $\text{&}$ in place of spaces.

The final part of the script joins the three strings we've created into one.

```
% Concatenate beginning, middle and ending into one
myString = strcat(beginString, myString, endString);
```

MyString is the output of the function, but this very last command acts like "Edit-Copy" and loads the result into the clipboard. Just find where it goes and hit `Ctrl+V`

```
clipboard('copy',myString);
end

```

## The `ddsm` function code 

The only difference between this code and the one above is that it adds double-dollar signs to the beginning and end of the string. Not usually needed in MATLAB live scripts, but very helpful in most other markdown settings.

```
function myString = ddsm(A)
    arguments
        A (:,:,:)
    end
    
%Typeset matrix brackets and array
beginString = '$$\left[\begin{array}';
endString = '\end{array}\right]$$';

% Loop criteria based on matrix dimensions
[m, n] = size(A);

% Create right-justified DSM columns
cString = '{';
for i = 1:n
    if i==n
        cString = strcat(cString,'r}');
    else
        cString = strcat(cString,'r');
  end
end

%Typeset the values in the matrix
myString=cString;
for r = 1:m
    for c = 1:n
        if c==n
            myString = strcat(myString,num2str( A(r,c)),'\\ ');
        else
            myString = strcat(myString,num2str( A(r,c)),'&');
        end
    end
end

% Concatenate beginning, middle and ending into one
myString = strcat(beginString, myString, endString);

% Copy to clipboard for easy pasting
clipboard('copy',myString);
end
```