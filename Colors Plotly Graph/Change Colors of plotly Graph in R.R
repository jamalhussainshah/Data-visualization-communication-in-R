
library(plotly)
library(tidyverse)


df <- as.data.frame(ggplot2::midwest)

RColorBrewer::display.brewer.all()


plot_ly(
  data = df,
  x = ~perchsd,
  y = ~percollege,
  type = "scatter",
  mode = "markers",
  color = ~state,
  colors = "Set1"
)


plot_ly(
  data = df,
  x = ~perchsd,
  y = ~percollege,
  type = "scatter",
  mode = "markers",
  color = ~state,
  colors = c("red", "blue", "black", "#32a852", "#c10dd1")
)




df %>%
  group_by(state) %>% 
  summarize(tot = sum(poptotal)) %>% 
  plot_ly(
    x = ~state,
    y = ~tot,
    type = "bar",
    color = ~tot,
    colors = "YlOrRd"
  )



df %>%
  group_by(state) %>% 
  summarize(tot = sum(poptotal)) %>% 
  plot_ly(
    x = ~state,
    y = ~tot,
    type = "bar",
    color = ~tot,
    colors = c("#1B98E0","black")
  )






df %>% 
  plot_ly(
    x = ~state,
    y = ~percbelowpoverty,
    type = "scatter",
    color = ~percbelowpoverty,
    colors = "PuOr"
  ) %>% 
  layout(plot_bgcolor = "#bababa")# increases contrast between the dots and background



df %>% 
  plot_ly(
    x = ~state,
    y = ~percbelowpoverty,
    type = "scatter",
    color = ~percbelowpoverty,
    colors = c("#4e9665","white","#c26d11")
  ) %>% 
  layout(plot_bgcolor = "#bababa")# increases contrast between the dots and background