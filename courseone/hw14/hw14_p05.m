#{
hw14_p04.m
INCE course 1, lesson 14
levels and decibels

problem 5
2023-07-04
#}

# initialize empty results arrays
number_sources_array = [];
results_array = [];

# iterate and combine levels from 1 to 50 sources, all with level 0 dB
for number_sources = 1:100
  level_array = zeros(1, number_sources);
  combined_level = combine_levels(level_array);
  results_array = [results_array combined_level];
  number_sources_array = [number_sources_array number_sources];

  [combined_level, number_sources]
endfor

# plot results
plot(results_array, 'b', 'LineWidth', 1);
set(gcf, 'Name', 'INCE Course 1, Lesson 14, Problem 5')
set(gca, 'Title', 'Cumulative level addition', ...,
'TitleFontWeight', 'normal', ...
'XLabel', 'Number of incoherent sources at 0 dB re:20\muPa', ...
'YLabel', 'Cumulative sound pressure level (dB re:20\muPa)', ...
'FontSize', 14, ...
'Box', 'off');

