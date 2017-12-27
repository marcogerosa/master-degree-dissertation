library(ggplot2)
library(dplyr)
library(reshape2)
library(forcats)

# # ETAPA 2 - IDADE DOS PARTICIPANTES
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
#         legend.position = "bottom", legend.title = element_blank()) +
#   geom_text(position = position_stack(vjust = 0.5), size=2.5, data=subset(software,value != 0 & value != 1)) + 
#   scale_y_continuous(labels = function(x){ paste0(x, "%") }) +
#   coord_cartesian(ylim=c(0,50))
# 
# 
# # ETAPA 2 - PAISES
# software <- read.table(text="Pais  Freq
#                        Brasil    78.10
#                        Alemanha    2.00
#                        Irlanda   2.00
#                        Italia    1.50
#                        EUA    2.50
#                        'Reino Unido'   1.00
#                        Outros    13.00", header=TRUE)
# software <- melt(software, id.var="Pais")
# ggplot(software, aes(x = fct_inorder(Pais), y = value, fill = variable)) +
#   geom_bar(stat = "identity") +
#   theme(axis.title.x = element_blank(), axis.title.y = element_blank(),
#         legend.position = " ", legend.title = element_blank()) +
#   scale_y_continuous(labels = function(x){ paste0(x, "%") })
# 
# 
# # ETAPA 2 - ESTADOS
# software <- read.table(text="Estado  Freq
#                        SP  59
#                        MG   6
#                        RJ   6
#                        RS   5
#                        SC   4
#                        BH   3
#                        CE   3
#                        PE   3
#                        AL   2
#                        AM   2
#                        PB   2
#                        Outros   7", header=TRUE)
# software <- melt(software, id.var="Estado")
# ggplot(software, aes(x = fct_inorder(Estado), y = value, fill = variable)) +
#   geom_bar(stat = "identity") +
#   theme(axis.title.x = element_blank(), axis.title.y = element_blank(),
#         legend.position = " ", legend.title = element_blank()) +
#   scale_y_continuous(labels = function(x){ paste0(x, "%") })


library(likert)
likert_4 <- data.frame(as.factor(sample(1:4, 500, replace=T, prob=c(0.2,0.3,0.1,0.4))),
                       as.factor(sample(1:4, 500, replace=T, prob=c(0.5,0.25,0.15,0.1))),
                       as.factor(sample(1:4, 500, replace=T, prob=c(0.25,0.1,0.4,0.25))),
                       as.factor(sample(1:4, 500, replace=T, prob=c(0.1,0.4,0.4,0.1))),
                       as.factor(sample(1:4, 500, replace=T, prob=c(0.35,0.25,0.15,0.25))))
levels_4 <- list(c("Strongly disagree", "Disagree", "Agree", "Strongly Agree"))
items <- list(c("Q1", "Q2", "Q3", "Q4", "Q5"))
source("sjPlotLikert.R")
sjp.likert(likert_4, legendLabels=levels_4, axisLabels.x=items)

