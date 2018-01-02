df <- read.table(text="Elemento   Questao  Tipo   Total
                        Activity  Q1  'Boa Pr\uE1ticas' 35
                        Activity  Q2  'Ma Pr\uE1ticas'  38
                        Fragment  Q3  'Boa Pr\uE1ticas' 30
                        Fragment  Q4  'Ma Pr\uE1ticas'  27
                        Adapter   Q5  'Boa Pr\uE1ticas' 25
                        Adapter   Q6  'Ma Pr\uE1ticas'  21
                        Listener  Q7  'Boa Pr\uE1ticas' 10
                        Listener  Q8  'Ma Pr\uE1ticas'  11
                        Layout    Q9  'Boa Pr\uE1ticas' 33
                        Layout    Q10 'Ma Pr\uE1ticas'  22
                        Style     Q11 'Boa Pr\uE1ticas' 12
                        Style     Q12 'Ma Pr\uE1ticas'  9
                        String    Q13 'Boa Pr\uE1ticas' 23
                        String    Q14 'Ma Pr\uE1ticas'  19
                        Drawable  Q15 'Boa Pr\uE1ticas' 22
                        Drawable  Q16 'Ma Pr\uE1ticas'  9", header=TRUE)

df <- melt(df, id.var=c("Questao", "Elemento", "Tipo", "Total"))

ggplot(data=df, aes(x=fct_inorder(Questao), y=Total, fill=Tipo)) +
  geom_bar(stat="identity", position=position_dodge()) +
  coord_cartesian(ylim=c(0,45)) +
  theme(axis.title.x = element_blank(), axis.title.y = element_blank(),
        legend.position = "bottom", legend.title = element_blank()) +
  scale_fill_manual(values=c("#00bfc4", "#f8766d")) +
  geom_text(aes(label=Total), size=2.5, position=position_dodge(width=0.9), vjust=-0.55) +
  facet_grid(.~fct_inorder(Elemento),scales="free")