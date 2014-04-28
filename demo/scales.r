library(ggvis)

# Discrete colours for fill and a manual scale for opacity
mtcars %>% ggvis(x = ~wt, y = ~mpg, fill = ~factor(cyl), fillOpacity = ~hp) %>%
  layer_point() %>%
  set_dscale("opacity", "numeric", range = c(0.2, 1))

# Unscaled values in the data
mtc <- mtcars
mtc$color <- c("red", "teal", "#cccccc", "tan")
ggvis(mtc, props(x = ~wt, y = ~mpg, fill := ~color)) + layer_point()

# Unscaled constant
ggvis(mtcars, props(x = ~wt, y = ~mpg, fill := "red")) + layer_point()
