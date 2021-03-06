library(ggplot2)
library(dplyr)
library(reshape2)
library(forcats)

# PORTUGUES
# df <- read.table(text="Elemento   Questao  Tipo   Total
#                         Activity  Q1  'Boas Pr\uE1ticas' 35
#                         Activity  Q2  'M\uE1s Pr\uE1ticas'  38
#                         Fragment  Q3  'Boas Pr\uE1ticas' 30
#                         Fragment  Q4  'M\uE1s Pr\uE1ticas'  27
#                         Adapter   Q5  'Boas Pr\uE1ticas' 25
#                         Adapter   Q6  'M\uE1s Pr\uE1ticas'  21
#                         Listener  Q7  'Boas Pr\uE1ticas' 10
#                         Listener  Q8  'M\uE1s Pr\uE1ticas'  11
#                         Layout    Q9  'Boas Pr\uE1ticas' 33
#                         Layout    Q10 'M\uE1s Pr\uE1ticas'  22
#                         Style     Q11 'Boas Pr\uE1ticas' 12
#                         Style     Q12 'M\uE1s Pr\uE1ticas'  9
#                         String    Q13 'Boas Pr\uE1ticas' 23
#                         String    Q14 'M\uE1s Pr\uE1ticas'  19
#                         Drawable  Q15 'Boas Pr\uE1ticas' 22
#                         Drawable  Q16 'M\uE1s Pr\uE1ticas'  9", header=TRUE)

# INGLES
df <- read.table(text="Elemento   Questao  Tipo   Total
                        Activity  Q1  'Good Practices' 35
                        Activity  Q2  'Bad Practices'  38
                        Fragment  Q3  'Good Practices' 30
                        Fragment  Q4  'Bad Practices'  27
                        Adapter   Q5  'Good Practices' 25
                        Adapter   Q6  'Bad Practices'  21
                        Listener  Q7  'Good Practices' 10
                        Listener  Q8  'Bad Practices'  11
                        Layout    Q9  'Good Practices' 33
                        Layout    Q10 'Bad Practices'  22
                        Style     Q11 'Good Practices' 12
                        Style     Q12 'Bad Practices'  9
                        String    Q13 'Good Practices' 23
                        String    Q14 'Bad Practices'  19
                        Drawable  Q15 'Good Practices' 22
                        Drawable  Q16 'Bad Practices'  9", header=TRUE)

df <- melt(df, id.var=c("Questao", "Elemento", "Tipo", "Total"))

ggplot(data=df, aes(x=fct_inorder(Questao), y=Total, fill=Tipo)) +
  geom_bar(stat="identity", position=position_dodge()) +
  coord_cartesian(ylim=c(0,45)) +
  theme(axis.title.x = element_blank(), axis.title.y = element_blank(),
        legend.position = "bottom", legend.title = element_blank()) +
  scale_fill_manual(values=c("#f8766d", "#00bfc4")) +
  geom_text(aes(label=Total), size=2.5, position=position_dodge(width=0.9), vjust=-0.55) +
  facet_grid(.~fct_inorder(Elemento),scales="free")