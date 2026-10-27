# Programming_Assignment5_LUCAS




# ECE2112 — PROGRAMMING ASSIGNMENT 5

**Lance Darell Lucas — 2ECE-A**

---

## 📋 Table of Contents

- [Overview](#-overview)
- [Function Summary](#-function-summary)
- [Problem Specifications & Solutions](#-problem-specifications--solutions)
  - [A. Transpose Operations](#a-transpose-operations)
  - [B. Linear System Solution](#b-linear-system-solution)
- [Project File Structure](#-project-file-structure)
- [Expected Results](#-expected-results)

---

## 📌 Overview

This project presents the MATLAB solutions for ECE 2112 Programming Assignment 5. It demonstrates matrix transpose operations on real and complex matrices and solves a system of linear equations using the inverse method and Cramer's Rule.

The program uses MATLAB matrix operations and displays the results in the Command Window using `disp()`.

---

## 🧩 Function Summary

| Function / Operator | Description |
|---|---|
| `disp()` | Displays matrices, vectors, and results. |
| `transpose()` | Transposes a matrix without complex conjugation. |
| `'` | Performs a complex-conjugate transpose. |
| `.'` | Performs a non-conjugate transpose. |
| `inv()` | Calculates the inverse of a matrix. |
| `det()` | Calculates the determinant of a matrix. |
| `norm()` | Calculates the norm used to check numerical accuracy. |

---

## 📝 Problem Specifications & Solutions

### A. Transpose Operations

**Problem:** Define the given real matrix `R` and complex matrix `Z`. Display `transpose(A)`, `A'`, and `A.'` for both matrices.

#### MATLAB Code

```matlab
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
```

#### Explanation

- For the real matrix `R`, all three operations produce identical results.
- For the complex matrix `Z`, `transpose(Z)` and `Z.'` produce identical results.
- The operator `Z'` also takes the complex conjugate of each element.

---

### B. Linear System Solution

**Problem:** Solve the given system of four linear equations using the inverse method and Cramer's Rule. Display both solutions, the determinant of `A`, and the required numerical checks.

#### MATLAB Code

```matlab
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

```

#### Explanation

**Method 1 — Inverse Method:** The solution is calculated by multiplying the inverse of the coefficient matrix by the vector `b`.

**Method 2 — Cramer's Rule:** Each variable is calculated by dividing the determinant of the modified coefficient matrix by the determinant of `A`.

**Numerical checks:**

- `norm(x_inv - x_cramer)` compares the two solution vectors.
- `norm(A * x_inv - b)` checks how closely the computed solution satisfies the original system.

Both values should be approximately zero, allowing for floating-point rounding.

---

## 📁 Project File Structure

```text
Programming_Assignment5_LUCAS/
└── README.md
```

The README contains the MATLAB source code for both problems. You may also upload the code separately as a `.m` file if your instructor requires an executable MATLAB script.


## ✅ Expected Results

- The transpose operations on the real matrix produce identical results.
- For the complex matrix, `transpose(Z)` and `Z.'` match, while `Z'` performs complex conjugation.
- The determinant of `A` is nonzero.
- The inverse method and Cramer's Rule produce matching solutions within numerical precision.
- The two numerical checks should be approximately zero.

---

## 👨‍💻 Author

**Lance Darell Lucas**  
**Section:** 2ECE-A  
**Course:** ECE 2112

---

*Programming Assignment 5 — Introduction to MATLAB Programming*

