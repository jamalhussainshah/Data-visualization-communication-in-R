

library("ggplot2")



set.seed(926853)                           # Set random seed
data <- data.frame(x = rnorm(100),         # Create example data frame
                   y = rnorm(100),
                   group = LETTERS[1:4])
head(data)                                 # Print head of example data frame






ggplot(data,                               # theme_bw scatterplot
       aes(x = x,
           y = y,
           col = group)) +
  geom_point() +
  theme_bw()


ggplot(data,                               # theme_bw density plot
       aes(x = x,
           fill = group)) +
  geom_density(alpha = 0.5) +
  theme_bw()




ggplot(data,                               # theme_bw histogram
       aes(x = x,
           fill = group)) +
  geom_histogram(alpha = 0.5,
                 position = "identity",
                 bins = 50) +
  theme_bw()



ggplot(aggregate(y ~ group, data, sum),    # theme_bw barplot
       aes(x = group,
           y = y,
           fill = group)) +
  geom_bar(stat = "identity") +
  theme_bw()



ggplot(data,                               # theme_bw boxplot
       aes(x = x,
           fill = group)) +
  geom_boxplot() +
  theme_bw()




ggplot(data,                               # theme_bw line plot
       aes(x = x,
           y = y,
           col = group)) +
  geom_line() +
  theme_bw()