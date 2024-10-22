A = [1 2 3; 4 5 6];
a1 = rot90(A,2)
a2 = rot90(A,-1)
b = reshape(A,1,6)

B= [3 -3 6 -2 1;
    3 -6 1 -1 1;
    2 -4 4 -4 3;
    3 -6 5 -1 2;
    2 -4 9  1 1];
C = [14; 25; 5; 30; 30];
c = B\C

g = [1 2 3 4; 5 6 7 8; 9 10 11 12];
h = [3 3 4 4; 5 5 6 6; 7  7  8  8];
d1 = h >= g
d2 = g == h

% -----------------------

a1 = rand(5)
a2 = inv(a1)
a3 = a1*a2
a4 = a3-eye(5)

% -----------------------

d = [5 6 2 4 3];
e = [2, -5,7];
b1 = diag(d)
b2 = diag(d) + diag(e,2)

% -----------------------

A = [1 7 3 5; 9 1 8 6; 2 0 3 0]
a = 1./A
b = sqrt(A)
c = A; c([2,3],:) = c([3,2],:) 
d = tril(A)
% e = [A A(end,:)]  error
f = reshape(A,4,3)
g = [1 1 1 1; A; 1 1 1 1]
h = reshape(A,2,6)
i = flipud(A)