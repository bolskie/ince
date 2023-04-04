#{
hw02_p02_1.m
INCE course 1, lesson 2
introduction to computations in Octave

problem 2
2023-04-04
#}

# create vectors from problem statement
a_vector = linspace(1, 20, 10);  # ten numbers spaced linearly from 1 to 20
b_vector = logspace(1, 3, 10);  # ten numbers spaced logarithmically from 10 to 1000

# calculate vector solutions using matrix operations
tic  # timer to compare to for loop example in hw02_p02_2.m
x = sum(a_vector .* b_vector)  # elementwise product- can also use dot function
y = sum(a_vector .* log10(b_vector))
toc

