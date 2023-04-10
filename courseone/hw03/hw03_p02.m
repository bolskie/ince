#{
hw03_p02.m
INCE course 1, lesson 3
plotting in Octave

problem 2
2023-04-10
#}

# given sound pressure levels in problem statement
freqs = [125, 250, 500, 1000, 2000, 4000];
level_1 = [25, 31, 43, 50, 61, 70];
level_2 = [20, 32, 42, 44, 45, 55];

# plot two bar sound pressure level series
barHandle = bar([level_1', level_2']);

# set chart and axis titles
set(gcf, 'Name', 'INCE Course 1, Lesson 3, Problem 2')
set(gca, 'Title', 'Sound pressure level comparison', ...,
'TitleFontWeight', 'normal', ...
'XLabel', 'Octave band center frequency (Hz)', ...
'YLabel', 'Sound pressure level, Lp (dB re:20\muPa)', ...
'FontSize', 14, ...
'Box', 'off');

# format X-axis as categorical
set(gca, 'XTick', 1:length(freqs), ...
'XTickLabel', freqs);

# format bar colors
set(barHandle(1), 'FaceColor', 'b');
set(barHandle(2), 'FaceColor', 'r');

# legend and formatting
legend('level 1', 'level 2', ...
'FontSize', 12, ...
'EdgeColor', '#A9A9A9');

