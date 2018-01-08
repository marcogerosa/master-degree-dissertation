library(ggplot2)
library(dplyr)
library(reshape2)
library(forcats)

# ETAPA 3 EXPERIENCIA COM SOFTWARE E ANDROID
software <- read.table(text="Anos Software  Android
                            'sem exp.'   0    11
                            '< 1 ano'    13   17
                            '1-2 anos'   1    16
                            '2-4 anos'   17   19
                            '4-6 anos'   20   21
                            '6-8 anos'   13   11
                            '8-10 anos'  11   1
                            '> 10 anos'  21   0", header=TRUE)
software <- melt(software, id.var="Anos")
ggplot(software, aes(x = fct_inorder(Anos), y = value, fill = variable, label = value)) +
  geom_bar(stat = "identity") +
  theme(axis.title.x = element_blank(), axis.title.y = element_blank(),
        legend.position = "bottom", legend.title = element_blank(),
        text=element_text(size=14)) +
  geom_text(position = position_stack(vjust = 0.5), size=2.5, data=subset(software,value != 0 & value != 1)) +
  scale_y_continuous(labels = function(x){ paste0(x, "%") }) +
  coord_cartesian(ylim=c(0,45)) 
  

