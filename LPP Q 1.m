% Define the variables
x = intlinprog(z,intcon,A,b,Aeq,beq,lb,ub);

% Objective function (minimize cost)
z = [180; 160];

% Constraints
A = [6 1; 3 1; 4 6];
b = [12; 8; 24];

% Equality constraints (mine X + mine Y = 7 days/week)
Aeq = [1 1];
beq = 7;

% Integer constraints (x and y must be integers)
intcon = [1 2];

% Lower and upper bounds
lb = [0 0];
ub = [7 7];

% Solve the LPP
x = intlinprog(z,intcon,A,b,Aeq,beq,lb,ub);



