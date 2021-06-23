function ffd = backwardFiniteDifference(f,x,h,m,n)
%reject if m>2 or n>2
coefficients = [NaN NaN 1 -1 ;
                NaN 3/2 -2 1/2];
coefficients(:,:,2) = [ NaN 1 -2 1 ;
                        2 -5 4 -1];

c = coefficients(n,:,m);
c = c(not(isnan(c)));

ffd = 0;
i=0;
    for cof =c
        ffd = ffd+ cof*f(x-i*h);
        i=i+1;
    end
    ffd=ffd/(h^m);
end