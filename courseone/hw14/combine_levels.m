function level_total = combine_levels(level_array)
  #{
  combine an input array of multiple decibel levels
  and output a single value representing the level total from the inputs
  #}
  running_total = 0;  % initialize value of total

  # iterate through input array and combine into single value
  for each_level = 1:length(level_array)
    each_value = level_array(each_level);
    energy_value = 10 ^ (each_value / 10);
    running_total = running_total + energy_value;
  endfor

  # calculate decibel value of total
  raw_level = 10 * log10(running_total);
  level_total = round(10*raw_level) / 10;  # round to one decimal place

