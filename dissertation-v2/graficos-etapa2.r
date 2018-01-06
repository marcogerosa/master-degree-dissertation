library(ggplot2)
library(dplyr)
library(reshape2)
library(forcats)

# ETAPA 2 - IDADE DOS PARTICIPANTES
# software <- read.table(text="Idade    valor
#                        '19-24 anos'   25
#                        '25-34 anos'   57
#                        '35-44 anos'   16
#                        '45-54 anos'   2", header=TRUE)
# software <- melt(software, id.var="Idade")
# ggplot(software, aes(x = fct_inorder(Idade), y = value, fill = variable)) +
#   geom_bar(stat = "identity") +
#   theme(axis.title.x = element_blank(), axis.title.y = element_blank(),
#         legend.position = " ", legend.title = element_blank()) +
#   scale_y_continuous(labels = function(x){ paste0(x, "%") }) +
#   coord_cartesian(ylim=c(0,60))
# 
# # ETAPA 2 - ESCOLARIDADE PARTICIPANTES
# software <- read.table(text="Grau valor
#                        'Superior incompleto' 1
#                        Estudante  23
#                        Graduacao 61
#                        Pos-graduacao 5
#                        Mestrado  9
#                        Doutorado 1", header=TRUE)
# software <- melt(software, id.var="Grau")
# ggplot(software, aes(x = fct_inorder(Grau), y = value, fill = variable)) +
#   geom_bar(stat = "identity") +
#   theme(axis.title.x = element_blank(), axis.title.y = element_blank(),
#         legend.position = " ", legend.title = element_blank()) +
#   scale_y_continuous(labels = function(x){ paste0(x, "%") })
# 
# # ETAPA 2 EXPERIENCIA COM SOFTWARE E ANDROID
# software <- read.table(text="Anos Software  Android
#                        'sem exp.'   0 7
#                        '< 1 ano'   5 19
#                        '1-2 anos'  11  19
#                        '2-4 anos'  22  27
#                        '4-6 anos'  19  16
#                        '6-8 anos'  13  10
#                        '8-10 anos' 4 1
#                        '> 10 anos' 25  0", header=TRUE)
# software <- melt(software, id.var="Anos")
# ggplot(software, aes(x = fct_inorder(Anos), y = value, fill = variable, label = value)) +
#   geom_bar(stat = "identity") +
#   theme(axis.title.x = element_blank(), axis.title.y = element_blank(),
#         legend.position = "bottom", legend.title = element_blank(),
#         text=element_text(size=14)) +
#   geom_text(position = position_stack(vjust = 0.5), size=2.5, data=subset(software,value != 0 & value != 1)) +
#   scale_y_continuous(labels = function(x){ paste0(x, "%") }) +
#   coord_cartesian(ylim=c(0,50))


# ETAPA 2 - PAISES
software <- read.table(text="Pais  Freq
                       Brasil    78.10
                       Alemanha    2.00
                       Irlanda   2.00
                       Italia    1.50
                       EUA    2.50
                       'Reino Unido'   1.00
                       Outros    13.00", header=TRUE)
software <- melt(software, id.var="Pais")
ggplot(software, aes(x = fct_inorder(Pais), y = value, fill = variable)) +
  geom_bar(stat = "identity") +
  theme(axis.title.x = element_blank(), axis.title.y = element_blank(),
        legend.position = " ", legend.title = element_blank(),
        text=element_text(size=14)) +
  coord_cartesian(ylim=c(0,80)) +
  scale_y_continuous(labels = function(x){ paste0(x, "%") })


# ETAPA 2 - ESTADOS
software <- read.table(text="Estado  Freq
                       SP  59
                       MG   6
                       RJ   6
                       RS   5
                       SC   4
                       BH   3
                       CE   3
                       PE   3
                       AL   2
                       AM   2
                       PB   2
                       Outros   7", header=TRUE)
software <- melt(software, id.var="Estado")
ggplot(software, aes(x = fct_inorder(Estado), y = value, fill = variable)) +
  geom_bar(stat = "identity") +
  coord_cartesian(ylim=c(0,80)) +
  theme(axis.title.x = element_blank(), axis.title.y = element_blank(),
        legend.position = " ", legend.title = element_blank(),
        text=element_text(size=14)) +
  scale_y_continuous(labels = function(x){ paste0(x, "%") })





# LIKERT GRAPH
# library(sjPlot)
# library(sjmisc)
# # load sample data set.
# data(efc)
# # set theme
# # set_theme(geom.outline.color = "black", 
# #           geom.outline.size = 1, 
# #           geom.label.size = 2,
# #           geom.label.color = "black",
# #           title.color = "red", 
# #           title.size = 1.5, 
# #           axis.angle.x = 45, 
# #           axis.textcolor = "blue")
# sjp.setTheme(theme = "539",
#              geom.label.color = "black", 
#              geom.label.size = 2.5,
#              axis.textsize = .8, 
#              axis.title.size = .9,
#              legend.size = .7,
#              legend.item.size = .5)
# 
# # seed
# set.seed(1)
# 
# 
# mydf <- data.frame(Java = as.factor(sample(1:5, 500, replace=T, prob=c(0.04, 0.01, 0.25, 0.47, 0.23))),
#                    Android = as.factor(sample(1:5, 500, replace=T, prob=c(0.11, 0.20, 0.28, 0.36, 0.22))),
#                    C = as.factor(sample(1:5, 500, replace=T, prob=c(0.34, 0.34, 0.17, 0.10, 0.04))),
#                    Javascript = as.factor(sample(1:5, 500, replace=T, prob=c(0.32, 0.12, 0.35, 0.16, 0.04))),
#                    PHP = as.factor(sample(1:5, 500, replace=T, prob=c(0.39, 0.34, 0.15, 0.08, 0.02))),
#                    ObjectiveC = as.factor(sample(1:5, 500, replace=T, prob=c(0.26, 0.55, 0.11, 0.04, 0.02))),
#                    CPlus = as.factor(sample(1:5, 500, replace=T, prob=c(0.40, 0.25, 0.25, 0.08, 0.02))),
#                    Kotlin = as.factor(sample(1:5, 500, replace=T, prob=c(0.38, 0.29, 0.20, 0.12, 0.01))),
#                    Swift = as.factor(sample(1:5, 500, replace=T, prob=c(0.32, 0.48, 0.15, 0.03, 0.01))),
#                    Python = as.factor(sample(1:5, 500, replace=T, prob=c(0.41, 0.36, 0.20, 0.02, 0.00))),
#                    Ruby = as.factor(sample(1:5, 500, replace=T, prob=c(0.27, 0.64, 0.07, 0.01, 0.00))))
# # create labels
# labels <- c("N??o Conhe??o", "Iniciante", "Intermediario", "Avancado", "Especialista")
# # create item labels
# items <- c("Java", "Android", "C#", "Javascript", "PHP", "Objective-C", "C/C++", "Kotlin", "Swift", "Python", "Ruby")
# 
# sjp.likert(mydf)
# sjp.likert(mydf, axis.labels = items, legend.labels = labels)
# 
# sjp.likert(mydf,
#            axis.labels = items,
#            legend.labels = labels,
#            values = "sum.outside", # labels outside bars
#            geom.colors = "PRGn",   # purple (agree) to green (disagree)
#            reverse.colors = TRUE)  # reverse colors, so agree is green
# 
# 
# # http://strengejacke.de/sjPlot/sjp.likert/