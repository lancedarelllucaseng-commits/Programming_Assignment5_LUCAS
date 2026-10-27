%% PROBLEM A: TRANSPOSE OPERATIONS

% Define the real matrix R
R = [5 -2  0  7;
     1  3 -4  2;
     6  0  8 -1];

% Define the complex matrix Z
Z = [ 2+3i, -1+4i, 5-2i;
     -3+1i,  6,     2+5i];

% Display transpose operations for R
disp('PROBLEM A: TRANSPOSE OPERATIONS');
disp('Real Matrix R:');
disp(R);

disp('transpose(R):');
disp(transpose(R));

disp('R'':');
disp(R');

disp('R.'':');
disp(R.');

% Display transpose operations for Z
disp('Complex Matrix Z:');
disp(Z);

disp('transpose(Z):');
disp(transpose(Z));

disp('Z'':');
disp(Z');

disp('Z.'':');
disp(Z.');

% Answers:
% a. For the real matrix R, all three expressions give identical results.
% b. For the complex matrix Z, transpose(Z) and Z.' give identical results.
% c. The apostrophe operator ' performs a transpose and complex conjugation.

%% PROBLEM B: TWO METHODS FOR A LINEAR SYSTEM

% Define the coefficient matrix A and right-hand-side vector b
A = [ 2 -1  3  2;
      1  4 -2  1;
      3  2  1 -1;
     -2  3  4  2];

b = [16; -7; 6; 7];

disp(' ');
disp('PROBLEM B: TWO METHODS FOR A LINEAR SYSTEM');

disp('Coefficient Matrix A:');
disp(A);

disp('Right-hand-side Vector b:');
disp(b);

% Inverse Method
x_inv = inv(A) * b;

disp('Solution using Inverse Method:');
disp(x_inv);

% Cramer's Rule
detA = det(A);
n = length(b);
x_cramer = zeros(n, 1);

for k = 1:n
    A_temp = A;
    A_temp(:, k) = b;
    x_cramer(k) = det(A_temp) / detA;
end

disp('Solution using Cramer''s Rule:');
disp(x_cramer);

% Display determinant of A
disp('Determinant of A:');
disp(detA);

% Numerical checks
disp('Difference between the two solution vectors:');
disp(norm(x_inv - x_cramer));

disp('Residual of the inverse-method solution:');
disp(norm(A * x_inv - b));
