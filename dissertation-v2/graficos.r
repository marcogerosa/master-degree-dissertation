library(ggplot2)
library(dplyr)
library(reshape2)
library(forcats)

# EXPERI??NCIA COM SOFTWARE 
software <- read.table(text="Experiencia    S1    S2    S3
                                0-1         3     11      9
                                1-2         2     22      1
                                2-4         7     45      12
                                4-6         14    38      14
                                6-8         10    26      9
                                8-10        2     8       8
                                10+         7     51      15", header=TRUE)
software <- melt(software, id.var="Experiencia")
ggplot(software, aes(x = fct_inorder(Experiencia), y = value, fill = variable)) +
    geom_bar(stat = "identity") + 
    theme(axis.title.x = element_blank(), axis.title.y = element_blank(), 
          legend.position = "bottom", legend.title = element_blank())




