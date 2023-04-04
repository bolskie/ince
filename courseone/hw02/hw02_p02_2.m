#{
hw02_p02_2.m
INCE course 1, lesson 2
introduction to computations in Octave

problem 2
2023-04-04
#}

# create vectors from problem statement
a_vector = linspace(1, 20, 10);  # ten numbers spaced linearly from 1 to 20
b_vector = logspace(1, 3, 10);  # ten numbers spaced logarithmically from 10 to 1000

# calculate vector solutions using for loop operations
tic  # timer to compare to matrix operations example in hw02_p02_1.m
x = 0;  # intialize values to aggregate summations
y = 0;
for each_element = 1:length(a_vector)
  # calculate the value of each term elementwise
  x_element = a_vector(each_element) * b_vector(each_element);
  y_element = a_vector(each_element) * log10(b_vector(each_element));

  # aggregate sum
  x = x + x_element;
  y = y + y_element;
endfor

# print results to terminal
x
y
toc  # about 25% slower for this data

