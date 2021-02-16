# 1.2.2 Homework

## Row Reduce the Following Matrices

Do not use the `rref` command until you have finished row-reducing and solving. For quick reference, here are the "by-hand" way to use the three elementary row operations in MATLAB. Practice both ways, in MATLAB and with pencil and paper, as both will be essential tools in this course. For full solutions, you can copy the matrix into your version of MATLAB and use the `rref` command. One version of the REF for each example is shown in the drop-down solution area.

1. Swap rows 1 and 2 in matrix $A$.
    
    ```
    a([1 2],:) = a([2 1],:)
    ```
    
2. Multiply row 2 by 7 in matrix $A$.
    
    ```
    a(2,:) = 7 * a(2,:)
    ```
    
3. Replace row 2 with the sum of itself with 3 times row 1.
    
    ```
    a(1,:) = a(2,:) + 3 * a(1,:)
    ```

````{panels}
HW Question 1
^^^
$$A = \left[\begin{array}{rrr}0&0&1\\-4&10&13\\0&-1&2\\-2&5&6\\\end{array}\right]$$

```{dropdown} Solution
$$\left[\begin{array}{rrr}-4&10&13\\0&-1&2\\0&0&1\\0&0&0\end{array}\right]$$
```

---
HW Question 2
^^^
$$B = \left[\begin{array}{rrr}4&8&-11\\2&-1&4\\2&1&0\\\end{array}\right]$$

```{dropdown} Solution
$$\left[\begin{array}{rrr}4&8&-11\\0&-5&\frac{19}{2}\\0&0&-\frac{1}{2}\\\end{array}\right]$$
```

---
HW Question 3
^^^
$$C = \left[\begin{array}{rrr}8&0&-9\\0&2&1\\2&-1&-4\\\end{array}\right]$$

```{dropdown} Solution
$$\left[\begin{array}{rrr}8&0&-9\\0&2&1\\0&0&-\frac{5}{4}\\\end{array}\right]$$
```

---
HW Question 4
^^^
$$D = \left[\begin{array}{rrrr}4&3&-28&-25\\-4&0&23&20\\\end{array}\right]$$

```{dropdown} Solution
$$\left[\begin{array}{rrrr}4&3&-28&-25\\0&3&-5&-5\\\end{array}\right]$$
```

````

