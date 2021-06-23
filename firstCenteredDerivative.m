function fcd = firstCenteredDerivative(f,x,h)
%first centered derivative
fcd = (f(x+h)-f(x-h))/(2*h);
end

