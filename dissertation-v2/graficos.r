library(ggplot2)
library(dplyr)
library(reshape2)
library(forcats)

# EXPERI??NCIA COM SOFTWARE EM S1, S2, S3
# software <- read.table(text="Experiencia    S1    S2    S3
#                                 0-1         3     11      9
#                                 1-2         2     22      1
#                                 2-4         7     45      12
#                                 4-6         14    38      14
#                                 6-8         10    26      9
#                                 8-10        2     8       8
#                                 10+         7     51      15", header=TRUE)
# software <- melt(software, id.var="Experiencia")
# ggplot(software, aes(x = fct_inorder(Experiencia), y = value, fill = variable)) +
#     geom_bar(stat = "identity") + 
#     theme(axis.title.x = element_blank(), axis.title.y = element_blank(), 
#           legend.position = "bottom", legend.title = element_blank())


# ETAPA 1 - IDADE DOS PARTICIPANTES
# software <- read.table(text="Idade    valor
#                             '19-24 anos'	18
#                        '25-34 anos'	74
#                        '35-44 anos'	4
#                        '45-54 anos'	2
#                        'Nao respondeu' 2", header=TRUE)
# software <- melt(software, id.var="Idade")
# ggplot(software, aes(x = fct_inorder(Idade), y = value, fill = variable)) +
#   geom_bar(stat = "identity") +
#   theme(axis.title.x = element_blank(), axis.title.y = element_blank(),
#         legend.position = " ", legend.title = element_blank()) +
#   scale_y_continuous(labels = function(x){ paste0(x, "%") })

# ETAPA 1 - ESCOLARIDADE PARTICIPANTES
# software <- read.table(text="Grau valor
#                               Estudante	18                              
#                               Graduacao 62
#                               Mestrado  11
#                               Doutorado 2
#                               Outros  7", header=TRUE)
# software <- melt(software, id.var="Grau")
# ggplot(software, aes(x = fct_inorder(Grau), y = value, fill = variable)) +
#   geom_bar(stat = "identity") + 
#   theme(axis.title.x = element_blank(), axis.title.y = element_blank(), 
#         legend.position = " ", legend.title = element_blank()) +
#   scale_y_continuous(labels = function(x){ paste0(x, "%") })

ETAPA 1 EXPERIENCIA COM SOFTWARE E ANDROID
software <- read.table(text="Anos	Software	Android
                          '< 1 ano'   7   13
                          '1-2 anos'  4   16
                         '2-4 anos'  16    40
                         '4-6 anos'  31    22
                         '6-8 anos'  22   9
                         '8-10 anos' 4  0
                         '> 10 anos' 16   0", header=TRUE)
software <- melt(software, id.var="Anos")
ggplot(software, aes(x = fct_inorder(Anos), y = value, fill = variable, label = value)) +
  geom_bar(stat = "identity") +
  theme(axis.title.x = element_blank(), axis.title.y = element_blank(),
        legend.position = "bottom", legend.title = element_blank()) +
  geom_text(position = position_stack(vjust = 0.5), size=2.5, data=subset(software,value != 0)) + 
  scale_y_continuous(labels = function(x){ paste0(x, "%") }) +
  coord_cartesian(ylim=c(0,60))


# ETAPA 1 - PAISES
# software <- read.table(text="Pais  Freq
#                               'EUA'	2.22
#                               Alemanha	2.22
#                               Irlanda   6.67
#                               Polonia   2.22
#                               Suica   2.22
#                               Brasil  80.00
#                               'Reino Unido' 2.22
#                               Outros	2.22", header=TRUE)
# software <- melt(software, id.var="Pais")
# ggplot(software, aes(x = fct_inorder(Pais), y = value, fill = variable)) +
#   geom_bar(stat = "identity") +
#   theme(axis.title.x = element_blank(), axis.title.y = element_blank(),
#         legend.position = " ", legend.title = element_blank()) +
#     scale_y_continuous(labels = function(x){ paste0(x, "%") })


# ETAPA 1 - ESTADOS
# software <- read.table(text="Estado  Freq
#                            'AM' 3
#                            'ES'  3
#                            'GO' 8
#                            'MG'  3
#                            'PR'  3
#                            'PE'  3
#                            'TO' 3
#                            'RJ'  8
#                            'SP' 55
#                            'SC'  5
#                            'RS' 6", header=TRUE)
# software <- melt(software, id.var="Estado")
# ggplot(software, aes(x = fct_inorder(Estado), y = value, fill = variable)) +
#   geom_bar(stat = "identity") +
#   theme(axis.title.x = element_blank(), axis.title.y = element_blank(),
#         legend.position = " ", legend.title = element_blank()) +
#   scale_y_continuous(labels = function(x){ paste0(x, "%") }) 
  
  
  # ylim(0, 80) + 
  # geom_text(aes(label=value), vjust=-0.5, size=3) 
  




