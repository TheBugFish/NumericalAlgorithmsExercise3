[A, rows, cols, entries]  = mmread('nos5.mtx'); 

tol = 1e-5;
b = ones(rows, 1);
x0 = ones(rows, 1);
[x, iter, res_vec] = cg(A, b, 1e-5, length(b)-1, x0)