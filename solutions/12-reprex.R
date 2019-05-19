library(tidyverse)
library(glue)

num_var <- 3

my_data <- rep(list(c(0L, 1L)), num_var) %>%
  set_names(glue("var_{seq_len(num_var)}")) %>%
  expand.grid()

# Works, but not generalizable to cases where `num_var` isn't 3
my_data %>%
  mutate(total = rowSums(.)) %>%
  arrange(total, desc(var_1, var_2, var_3))

# Errors
my_data %>%
  mutate(total = rowSums(.)) %>%
  arrange(total, desc(everything()))


reprex::reprex(venue = "so", si = TRUE, style = TRUE)
