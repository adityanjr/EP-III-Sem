T = [3 4; 1 8; -4 3] ;
A = [diag(-1:2:3) T; -4 4 1 2 1]

a = A(3,[2,4])

b = min(A(:,3))

c = max(A(2,:))

d = sum(A(:,2))

e = mean(A([1,4],:))

f = A([1,3],:)

g = A(1:2,3:5)

h = sum(A(1,:)) + sum(A(2,:))

i = A(:,2:3) + 3

% 2. Determine which of the following statements can be correctly executed and provide the result
x = [1 3 7]; 
y = [2 4 2];
A = [3 1 6; 5 2 7];
B = [1 4; 7 8;2 2];

a = x+y
b = x+A
c = A - [x' y']
d = [x;y] + A
e = [x;y']
f = [x;y]
g = A-3
h = A+B
i = B'+A
j = B*A
k = A'.*B
l = 2*B
m = 2.*B
n = 2/A
o = ones(1,3)*A

% 3.Explain the results or perform the following commands
A = [2 7 9 7; 3 1 5 6; 8 1 2 5];

a = A'
b = A(1,:)
c = A(:,[1 4])
d = A([2 3], [3 1])
e = A(:)
f = [A; A(1:2,:)]
g = sum (A)
h = sum (A')
i = mean (A)
j = mean (A'')
k = sum (A, 2)
l = min (A)
m = max (A')
n = min (A(:, 4))
o = max (min(A))

