function [x, iter, res_vec] = cg(A, b, tol, maxit, x0)
    r = b - A * x0;
    s = r;
    x = x0;
    iter = 0;
    initialResidual = residual(A, x0, b);
    res_vec(1) = initialResidual;
    for k = 0:maxit
        Ask = A*s; 
        alpha = (r'*r) ./ (s'*Ask);
        x = x + alpha*s;
        rkplusone = r - alpha*Ask;
        beta = rkplusone'*rkplusone ./ r'*r;
        s = rkplusone+ beta + s;
        r = rkplusone;
        res_vec(k+2) = residual(A,x,b);
        iter = k+1;
        if(s<= tol)    
            break
        endif
    endfor
endfunction