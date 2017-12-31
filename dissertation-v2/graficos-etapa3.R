library(ggplot2)
library(dplyr)
library(reshape2)
library(forcats)

# ETAPA 2 EXPERIENCIA COM SOFTWARE E ANDROID
software <- read.table(text="Anos Software  Android
                       'sem exp.'   0   12
                      '< 1 ano'    13  18
                       '1-2 anos'   1   16
                       '2-4 anos'   18  19
                       '4-6 anos'   21  22
                       '6-8 anos'   13  12
                       '8-10 anos'  12  1
                       '> 10 anos'  22  0", header=TRUE)
software <- melt(software, id.var="Anos")
ggplot(software, aes(x = fct_inorder(Anos), y = value, fill = variable, label = value)) +
  geom_bar(stat = "identity") +
  theme(axis.title.x = element_blank(), axis.title.y = element_blank(),
        legend.position = "bottom", legend.title = element_blank()) +
  geom_text(position = position_stack(vjust = 0.5), size=2.5, data=subset(software,value != 0 & value != 1)) +
  scale_y_continuous(labels = function(x){ paste0(x, "%") }) +
  coord_cartesian(ylim=c(0,45)) + 
  

