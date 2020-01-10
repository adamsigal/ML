# Octave notes:

## Intro
* `~=` is not-equals
* xor(1,1)
* disp(sprintf("2 decimals: %0.2f", a)) %display, like print
* format short: makes less decimal places be shown
* matrix:
	- A = [1 2; 3 4; 5 6]
* generate matrix:
	- v = 1:0.5:5 % increments of 0.5 until 3
	- >[1.0 1.5 2.0 2.5 3.0]
	- y = 1:5
	- >[1 2 3 4 5]
* ones(2,3) => [1 1 1; 1 1 1]
* 2*ones(2,3) => [2 2 2; 2 2 2]
* rand(m,n) %uniform
* randn(m,n) %normal distribution (gaussian)
* hist(Matrix) %histogram
* eye(m,n) %identity

## Moving data around:
* `size(A)` : dimensions of matrix
* `length(A)` : same, but less pretty
* `who` : vars in current scope
	- `whos` : detailed view
* `clear myVar` : delete var from scope
* `save <filename> <var>` : save var to file
	- `name.mat` : binary
	- `name.txt -ascii` : readable
* `A(2,3)` : element at 2,3
* `A(2,:)` : full second row
* `A(:,2)` : full second column
* `A([1,3],:)` : full 1st and 3rd rows
* `A(:,2) = [10;11;12]` : replace 2nd column
