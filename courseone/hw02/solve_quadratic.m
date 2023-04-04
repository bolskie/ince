#{
solve_quadratic.m
INCE course 1, lesson 2
introduction to computations in Octave

problem 1
2023-04-04
#}

# compute solutions to the quadratic equation
function [sol_1, sol_2] = solve_quadratic(a, b, c)
  # calculate denominator and right side of the numerator for convenience
  denom = 2 * a;
  num_right = sqrt((b ^ 2) - (4 * a * c));

  # calculate each solution with flipped numerator sign
  sol_1 = (-b + num_right) / denom;
  sol_2 = (-b - num_right) / denom;
endfunction

