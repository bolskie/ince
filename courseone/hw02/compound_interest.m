#{
compound_interest.m
INCE course 1, lesson 2
introduction to computations in Octave

problem 3
2023-04-04
#}

# compute amount of money from principal investment and interest terms
function A = compound_interest(P, r, n, t)
  # calculate account amount
  A = P * ((1 + (r / n)) ^ (n * t));  # equation in problem statement
endfunction

