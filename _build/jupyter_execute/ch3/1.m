# 3.1 Matrix Transformations

## Functions
The Margalit text suggests thinking first of a function like

$$f(x)=x^2$$

except that we are now going to use a vector $\vec x$ as the input. Our output will be a vector $\vec y$, too. A transformation looks very similar.

$$T\left(\vec x\right) = \vec y$$



## Example

Consider the transformation $T\left(\vec x\right)$ accomplished by mutliplication of the vector $\vec x$ by the matrix 

$$A = \left[\begin{array}{rrrr}-2&1&3&1\\-2&1&2&0\\\end{array}\right]$$





A = [-2 1 3 1 ; -2 1 2 0 ]

### Domain

The domain of $T\left(\vec x\right)$ consists of all possible vectors that can be multiplied by $A$, in this case, all possible 4-component vectors. The domain for $T\left(\vec x\right)$ is $\mathbb R^4$. 

x1 = [1 ; 0 ; -3 ; 2];
x2 = [4 ; 3 ; -2 ; -1];

A * x1
A * x2

### Codomain

When we multiply $A\vec x$, the output is a 2-component vector, so the codomain is $\mathbb R^2$. The range is subset of the codomain. The codomain is the vector space where the vectors live. The range is a subset of that vector space. Sometime the range subset is the entire codomain. If so, the transforamtion is called *onto*.

Consider an arbitrary vector in $\mathbb R^2$. 

$$\vec y = \left[\begin{array}{r}-2\\1\\\end{array}\right]$$

Let's create the augmented matrix and find the preimage.

y = [-2 ; 1]
rref([A,y])

Because the linear system is consistent, we know that $\vec y$ is in the range of $T\left(\vec x\right)$. We will dig deeper into these concepts in the next section.

<iframe scrolling="no" title="Pasch's Axiom" src="https://www.geogebra.org/material/iframe/id/pDU4peV5/width/1180/height/360/border/888888/sfsb/true/smb/false/stb/false/stbh/false/ai/false/asb/false/sri/false/rc/false/ld/false/sdz/true/ctl/false" width="100%" height="100%" style="border:1px;" allowfullscreen; style="display:block" > </iframe>