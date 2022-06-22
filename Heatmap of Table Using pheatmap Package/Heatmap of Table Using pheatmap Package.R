

library(ggplot2)


iris_cor <- cor(iris[ , 1:4])              # Create correlation matrix of iris
iris_cor                                   # Print correlation matrix of iris


install.packages("pheatmap")               # Install pheatmap package
library("pheatmap")                        # Load pheatmap


pheatmap(iris_cor,                         # Create heatmap with values
         display_numbers = TRUE)