# Appendix: Instructor Apps

Do you ever struggle to make multiple quiz questions? What if you have a large class taking a test in a classroom where the desks are arranged in ways that cheating would be easy? You would like four versions of the test, but doggone it, that means four matrices for every item, or four sets of vectors. And they have to be reasonably similar.

Using random matrices is a start, but it takes a bit to tweak them or validate them. That's why I have written several functions in MATLAB to make my life easier.

geninvert(n)
: Generates an $n\times n$ invertible matrix

genrowred(m,n,k)
: Generates an $m\times n$ matrix suitable for row-reduction. Since it is created from a matrix in REF by using $k$ random row operations, the process of row-reducing is much cleaner than for randomly generated matrices.



```{toctree}
:hidden:
:titlesonly:


1
2
3
4
5
6
```
