#{
hw08_p06.m
INCE course 1, lesson 8
forced vibration of damped simple oscillators

problem 6
2023-05-24
#}

# given parameters from problem statement
m = [1 1 1 1];
c = [1 10 20 40];
k = [100 100 100 100];

# call given plot function
# plot_frequency_response(m, c, k, 'admittance')
plot_frequency_response(m, c, k, 'impedance')

