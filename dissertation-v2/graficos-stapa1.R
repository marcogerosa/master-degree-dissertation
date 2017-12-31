software <- read.table(text="Elemento 'Boas Praticas'	'Mas Praticas'
                       'Q1     Q2' 36	35
                       'Q3     Q4'	33	31
                       'Q5     Q6'	30	27
                       'Q7     Q8'	24	23
                       'Q9     Q10'	28	23
                       'Q11     Q12'	23	22
                       'Q13     Q14'	28	23
                       'Q15     Q16'	24	21", header=TRUE)
software <- melt(software, id.var="Elemento")
  
ggplot(data=software, aes(x=fct_inorder(Elemento), y=value, fill=variable)) +
    geom_bar(stat="identity", position=position_dodge()) +
    coord_cartesian(ylim=c(0,40)) +
    theme(axis.title.x = element_blank(), axis.title.y = element_blank(),
          legend.position = "bottom", legend.title = element_blank()) + 
    scale_fill_manual(values=c("#00bfc4", "#f8766d")) +
  geom_text(aes(label=value), size=2.5, position=position_dodge(width=0.9), vjust=-0.55)
