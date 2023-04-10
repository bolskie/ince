#{
hw03_p03.m
INCE course 1, lesson 3
plotting in Octave

problem 3
2023-04-10
#}

# given variable extents in problem statement
x_array = [0 : 0.1 : 1];
y_array = [0 : 0.1 : 4 * pi];
z_array = zeros(length(x_array), length(y_array));  # preallocate space

# calculate surface values, equation from problem statement
for x_idx = 1:length(x_array)
  for y_idx = 1:length(y_array)
    z_array(x_idx, y_idx) = exp(-x_array(x_idx)) * sin(y_array(y_idx));
  endfor
endfor

# plot three-dimensional surface
surf(x_array, y_array, z_array');

# set chart and axis titles
set(gcf, 'Name', 'INCE Course 1, Lesson 3, Problem 3')
set(gca, 'Title', 'Wave surface', ...,
'TitleFontWeight', 'normal', ...
'XLabel', 'x', ...
'YLabel', 'y', ...
'ZLabel', 'z', ...
'FontSize', 14, ...
'Box', 'off');

