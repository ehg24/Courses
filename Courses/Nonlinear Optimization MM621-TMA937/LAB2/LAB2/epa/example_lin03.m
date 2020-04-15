function gp = example_lin03
%objective function
obj = '[0; 1]''*x';
obj_grad = '[0; 1]';


%constraints
cons = {'[   -1; -1/10]''*x+1', ...
	'[ -1/2;  -1/9]''*x+1', ...
	'[ -1/3;  -1/8]''*x+1', ...
	'[ -1/4;  -1/7]''*x+1', ...
	'[ -1/5;  -1/6]''*x+1', ...
	'[ -1/6;  -1/5]''*x+1', ...
	'[ -1/7;  -1/4]''*x+1', ...
	'[ -1/8;  -1/3]''*x+1', ...
	'[ -1/9;  -1/2]''*x+1', ...
	'[-1/10;  -1/1]''*x+1', ...
	'[    0;    -1]''*x+0', ...
	'[    1;     0]''*x-20'};
cons_grad = {'[   -1; -1/10]', ...
	     '[ -1/2;  -1/9]', ...
	     '[ -1/3;  -1/8]', ...
	     '[ -1/4;  -1/7]', ...
	     '[ -1/5;  -1/6]', ...
	     '[ -1/6;  -1/5]', ...
	     '[ -1/7;  -1/4]', ...
	     '[ -1/8;  -1/3]', ...
	     '[ -1/9;  -1/2]', ...
	     '[-1/10;  -1/1]', ...
	     '[    0;    -1]', ...
	     '[    1;     0]'};
 
%toleranse, connected with
%'mouse' errors
tol = 0.01;

%domain
x1 = -10:1.75:25;
x2 = -10:1.75:20;


%starting point
x1_start = 2;
x2_start = 10;


%construct the optimization problem
gp = gr_epa_opt( x1, x2, ...
    epa_opt_prob( obj, obj_grad, cons, cons_grad ), ...
		 x1_start, x2_start );