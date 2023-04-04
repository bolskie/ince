#{
hw02_p01.m
INCE course 1, lesson 2
introduction to computations in Octave

problem 1
2023-04-04
#}

# given quadratic coefficients in problem statement (a, b, c)
coefs = {2, 5, -3; 1, 3, 4; 3, -2, 2};

# calculate quadratic equation solutions and print results to terminal
for each_set = 1:length(coefs)
  # display input parameters
  disp(horzcat("coefficient set ", num2str(each_set), ":"))
  disp(horzcat("a = ", num2str(coefs{each_set, 1})))
  disp(horzcat("b = ", num2str(coefs{each_set, 2})))
  disp(horzcat("c = ", num2str(coefs{each_set, 3})))

  # calculate and display solutions
  disp("solutions:")
  [x_1, x_2] = solve_quadratic(coefs{each_set, :});
  disp(horzcat("x_1 = ", num2str(x_1), ", ", "x_2 = ", num2str(x_2)))
  disp("")
endfor

