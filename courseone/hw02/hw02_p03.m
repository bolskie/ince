#{
hw02_p03.m
INCE course 1, lesson 2
introduction to computations in Octave

problem 3
2023-04-04
#}

# given input parameters in problem statement (P, r, n, t)
params = {1000, 0.01, 4, 10; 1000, 0.06, 6, 10; 10000, 0.06, 12, 25};

# calculate solution amounts and print results to terminal
for each_set = 1:rows(params)
  # display input parameters
  disp(horzcat("parameter set ", num2str(each_set), ":"))
  disp(horzcat("P = ", num2str(params{each_set, 1}), ", ", ...
  "r = ", num2str(params{each_set, 2}), ", ", ...
  "n = ", num2str(params{each_set, 3}), ", ", ...
  "t = ", num2str(params{each_set, 4})))

  # calculate solution and display result
  disp("solution:")
  A = compound_interest(params{each_set, :})
  disp("")
endfor

