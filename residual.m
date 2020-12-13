function [r] = residual(A, x_hat, b)
  [r] = (normest(A*x_hat - b)/(normest(A)*normest(x_hat)));
endfunction
