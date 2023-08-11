#{
hw15_p08.m
INCE course 1, lesson 15
spreading losses

problem 8b
2023-08-11
#}

# known quantities
c = 343;  # speed of sound in air, meters per second
char_impedance = 415;  # characteristic impedance given by p_0*c in rayls
Iref = 10 ^ (-12);  # watts per square meter

# given in problem statement
A = 1;  # Pascals * meters
r = logspace(-2, 1, 100);  # radius values from 0.1m to 100m
# f = 100;  # Hertz
# f = 1000;
f = 10000;

# calculate acoustic wavenumber
k = (2 * pi()) / (c * (1 / f) );

# calculate active impedance for array of radiuses
active_intensity = (A ^ 2) ./ (2 * char_impedance * (r .^ 2));
reactive_intensity = (A ^ 2) ./ (2 * char_impedance * k * (r .^ 3));

# convert to decibel intensity
Ia_dB = 10*log10(active_intensity ./ Iref);
Ir_dB = 10*log10(reactive_intensity ./ Iref);

# calculate 10-decibel-down distance
diff_dB = Ia_dB - Ir_dB;
dB_down_idx = find(diff_dB >= 9.5, 1);
r_dB_down = r(dB_down_idx);
dB_down_text = horzcat("The reactive intensity is 10dB less than the active intensity at ", ...
num2str(r_dB_down), " meters from the source.");
disp(dB_down_text)

### create plots
semilogx(r, Ir_dB, 'b', 'LineWidth', 1, ...
r, Ia_dB, 'r--', 'LineWidth', 2);

# set chart and axis titles
set(gcf, 'Name', 'INCE Course 1, Lesson 15, Problem 8')
set(gca, 'Title', 'Comparison of active and reactive intensity, 10000Hz', ...,
'TitleFontWeight', 'normal', ...
'XLabel', 'distance from source (m)', ...
'YLabel', 'Acoustic intensity (dB re:1pW/m^2)', ...
'FontSize', 14, ...
'Box', 'off');

# legend and formatting
legend('reactive intensity', 'active intensity', ...
'FontSize', 12, ...
'EdgeColor', '#A9A9A9');



