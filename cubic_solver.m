% Solve the cubic equation ax^3 + bx^2 + cx + d = 0 

a = input('Enter the coefficient a: ');
b = input('Enter the coefficient b: ');
c = input('Enter the coefficient c: ');
d = input('Enter the coefficient d: ');

p = (3*a*c - b^2) / (3*a^2);
q = (2*b^3 - 9*a*b*c + 27*a^2*d) / (27*a^3);

delta = (q^2 + 4*p^3)/27;

u = nthroot((-q + sqrt(delta))/2, 3);
v = nthroot((-q - sqrt(delta))/2, 3);

roots_array = [u - v - b/(3*a), -(u + v)/2 - b/(3*a) + 1i*(u - v)*sqrt(3)/2, -(u + v)/2 - b/(3*a) - 1i*(u - v)*sqrt(3)/2];

fprintf('Root 1: %.4f\n', real(roots_array(1)));
fprintf('Root 2: %.4f + %.4fi\n', real(roots_array(2)), imag(roots_array(2)));
fprintf('Root 3: %.4f - %.4fi\n', real(roots_array(3)), imag(roots_array(3)));

