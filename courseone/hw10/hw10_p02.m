#{
hw10_p02.m
INCE course 1, lesson 10
simple vibration isolation mounting systems

problem 2
2023-06-27
#}

# given mass and stiffness parameters from problem statement
m = [ 1 3 1.5; 1 3 1.5; 10 30 1.5; 1 30 1.5; 1 3 1.5; 5 5 5; 1 3 1.5];
k = [10000 15000 30000; 10000 150000 300000; 10000 15000 30000; 10000 15000 30000; 10000 150000 30000; 50000 50000 30000; 10000+100i 15000+150i 30000+300i];


# call given plot function
parameter_set = 7;
plot_3dof_transmissibility(m(parameter_set, :), k(parameter_set, :));


