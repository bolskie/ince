#{
hw03_p01.m
INCE course 1, lesson 3
plotting in Octave

problem 1
2023-04-10
#}

# given transmission losses in problem statement
freqs = [125, 160, 200, 250, 315, 400, 500, 630, 800, 1000, 1250, 1600, ...
2000, 2500, 3150, 4000, 5000];
tl_1 = [10, 12, 15, 14, 12, 16, 20, 22, 24, 22, 26, 27, 30, 32, 32, 33, 35];
tl_2 = [15, 16, 18, 15, 13, 18, 23, 25, 30, 35, 40, 41, 42, 42, 43, 45, 46];
tl_3 = [20, 23, 26, 30, 32, 25, 35, 37, 40, 43, 46, 50, 54, 55, 54, 55, 56];

# plot three transmission loss series
plot(tl_1, 'b--', 'LineWidth', 1, ...
tl_2, 'g-', 'LineWidth', 0.5, ...
tl_3, 'k:', 'LineWidth', 2);

# set chart and axis titles
set(gcf, 'Name', 'INCE Course 1, Lesson 3, Problem 1')
set(gca, 'Title', 'Transmission Loss Comparison', ...,
'TitleFontWeight', 'normal', ...
'XLabel', '1/3-octave band center frequency (Hz)', ...
'YLabel', 'Transmission loss, TL (dB re:20\muPa)', ...
'FontSize', 14, ...
'Box', 'off');

# format X-axis as categorical
set(gca, 'XTick', 1:length(freqs), ...
'XTickLabel', freqs, ...
'XTickLabelRotation', 90);

# legend and formatting
legend('partition 1', 'partition 2', 'partition 3', ...
'FontSize', 12, ...
'EdgeColor', '#A9A9A9');

