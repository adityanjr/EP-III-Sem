% assignment 1 - Aditya Singh 2K19/EP/005

a = [5, 9, 18];
b = [3; 8; 2];

add = a+b

sub = a-b

mult = a*b

div = a./b

aSize = size(a)
bSize = size(b)

aRef = a(2)
bRef = b(1)


x = [1 : 0.3 : 4];

m = cos(x.^2);
n = sin(x.^2);
C = m-n

D = exp(x).*(1 + cos(3*x))

u = [1 2 3 4 5];

E = u-1
F = u;
F(2:2:end) = F(2:2:end) + 10
G = sqrt(u)
H = u.^2

c1 = -2 + 4*i;
c2 = 6 - 9*i;

cadd = c1+c2
csub = c1-c2
cmul = c1*c2
cdiv = c1/c2

x = linspace(0,4*pi)
y = linspace(0,10) %for e^x

plot(x,cos(x))
title ("cos(x) for x in [0 to 4?]");
xlabel ("x");
ylabel ("cos(x)");

plot(x,csc(x))
title ("cosec(x) for x in [0 to 4?]");
xlabel ("x");
ylabel ("csc(x)");

plot(x,tan(x))
title ("tan(x) for x in [0 to 4?]");
xlabel ("x");
ylabel ("tan(x)");

plot(x,cot(x))
title ("cot(x) for x in [0 to 4?]");
xlabel ("x");
ylabel ("cot(x)");

plot(y,exp(y))
title ("e^x for x in [0 to 10]");
xlabel ("x");
ylabel ("exp(x)");