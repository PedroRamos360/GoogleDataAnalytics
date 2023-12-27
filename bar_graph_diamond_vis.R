library(ggplot2)
library(palmerpenguins)
library(tidyverse)

data(penguins)
View(penguins)

ggplot(data = penguins) +
geom_point(
  mapping = aes(
    x = flipper_length_mm,
    y = body_mass_g
  )
)

avg_depth_cut = diamonds %>%
  group_by(cut) %>%
  summarize(avg_depth = mean(depth))

print(avg_depth_cut)

bar_graph_depth_cut = 
  ggplot(data = avg_depth_cut, aes(
    x = cut,
    y = avg_depth
  )) + geom_bar(
    stat = "identity",
    fill = "skyblue",
    color = "black"
  ) + labs(
    title = "Average Depth by Cut",
    x = "Cut",
    y = "Average Depth"
  ) + theme_minimal()

print(bar_graph_depth_cut)

