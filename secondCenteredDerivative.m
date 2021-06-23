function scd = secondCenteredDerivative(f,x,h)
%first centered derivative
scd = (f(x+h)-2*f(x)+f(x-h))/(h^2);
end
