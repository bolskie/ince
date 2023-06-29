#{
hw12_p05.m
INCE course 1, lesson 12
superposition of waves

problem 5
2023-06-29
#}

# given mass and stiffness parameters from problem statement
amplitude_ratio = [1.0 0.8 0.5 0.1 1.0 1.0 1.0 1.0 1.0 1.0];
frequency_ratio = [1.0 1.0 1.0 1.0 0.8 0.8 0.5 0.5 0.1 0.1];
direction = {'diff' 'diff' 'diff' 'diff' 'same' 'diff' 'same' 'diff' 'same' 'diff'};

# call given plot function
parameter_set = 10;
animateSuperposition(amplitude_ratio(parameter_set), frequency_ratio(parameter_set), direction(parameter_set));

