% Parameters for solving problem in the interval -L < x < L
L = 5; % Interval Length
N = 1000; % No of points
x = linspace(-L,L,N)'; % Coordinate vector
dx = x(2) - x(1); % Coordinate step
% POTENTIAL,
U = 1/2*100*x.^(2); % quadratic harmonic oscillator potential
% Three-point finite-difference representation of Laplacian using sparse matrices
e = ones(N,1); Lap = spdiags([e -2*e e],[-1 0 1],N,N)/dx^2;
% Total Hamiltonian
hbar = 1; m = 1; % constants for Hamiltonian
H = -1/2*(hbar^2/m)*Lap + spdiags(U,0,N,N);
% Find lowest nmodes eigenvectors and eigenvalues of sparse matrix
nmodes = 3; options.disp = 0;
[V,E] = eigs(H,nmodes,'sa',options); % find eigs
[E,ind] = sort(diag(E));% convert E to vector and sort low to high
V = V(:,ind); % rearrange corresponding eigenvectors
% Generate plot of lowest energy eigenvectors V(x) and U(x)
Usc = U*max(abs(V(:)))/max(abs(U)); % rescale U for plotting
plot(x,V,x,Usc,'--k'); % plot V(x) and rescaled U(x)
% Add legend showing Energy of plotted V(x)
lgnd_str = [repmat('E = ',nmodes,1),num2str(E)];
legend(lgnd_str) % place lengend string on plot