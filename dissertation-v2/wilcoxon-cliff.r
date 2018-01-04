library(vioplot)
library(effsize)

adapter_complexo_smelly <- c(5,4,0,1,3,1,1,2,1,3,3,2,3,4,5,4,1,0,4,4,2,2,0,3,0,3,3,3,4,5,3,0,0,0,4,3)
componente_ui_acoplado_smelly <- c(4,5,4,2,5,5,3,5,4,1,1,5,0,4,4,5,5,0,3,5,4,0,0,0,3,2)
comportamento_suspeito_smelly <- c(2,0,2,3,3,2,2,5,4,5,3,3,3,5,3,0,4,5,0,1,2,5,3,0,0,2,2,0,4,1,0,4,1,3,4,0,0,5,3)
lcui_smelly <- c(5,4,1,0,2,4,2,2)
componente_ui_inteligente_smelly <- c(5,3,4,3,0,0,2,4,0,2,4,2,5,3,1,2,3,0,4,5,5,5,4,5,5,4,5,3,5,2,3,4,lcui_smelly)
longo_recurso_estilo_smelly <- c(0,3,0,2,3,3,0,0,1,0,1,0,4,0,2,0,1,2,3,0,1,0,4,0,0)
lpa_smelly <- c(5,4,1,3)
layout_profundamente_aninhado_smelly <- c(4,2,0,2,2,0,1,3,3,2,0,2,2,5,5,1,0,0,0,0,0,1,0,lpa_smelly)
atributos_estilo_repetidos_smelly <- c(5,0,0,3,2,3,0,2,1,3,4,3,4,0,0,0,2,4,2,3,4,3,1)

# SOH SMELLIES
vioplot(adapter_complexo_smelly, componente_ui_acoplado_smelly,
        comportamento_suspeito_smelly, componente_ui_inteligente_smelly,
        longo_recurso_estilo_smelly, layout_profundamente_aninhado_smelly,
        atributos_estilo_repetidos_smelly,
        names=c("AC", "CA", "CS", "CC", "LE", "LA", "AR") ,col="#00bfc4")


# SOH LIMPOS
lcui_clean <- c(3,0,0,0,0,3,0,0,0,0,0,0)
componentes_clean <- c(4,5,0,3,4,0,0,5,0,2,4,3,1,1,0,0,0,0,2,0,2,0,0,4,2,2,0,0,0,3,0,0,4,0,0,1,lcui_clean)
styles_clean <- c(2,3,5,2,0,0,2,3,0,1,0,2,0,0,0,0,3,0,0,2,0,0,0,0,4)
lpa_clean <- c(2,0,0,0,0,2,0)
layouts_clean <- c(0,2,3,4,0,0,1,3,0,0,0,0,0,2,3,2,2,0,0,0,0,0,0,0,3,1,0,2,0,0,0,0,0,0,0,0,1,2,0,lpa_clean)

vioplot(componentes_clean, styles_clean, layouts_clean,
        names=c("Componentes", "Styles", "Layouts") ,col="#00bfc4")


# SMELLIES VS CLEANS
componentes_smelly <- c(adapter_complexo_smelly, componente_ui_acoplado_smelly, comportamento_suspeito_smelly, componente_ui_inteligente_smelly)
vioplot(componentes_smelly, componentes_clean, names=c("Mau Cheirosos", "Limpos") ,col="#00bfc4")

recursos_smelly <- c(longo_recurso_estilo_smelly, layout_profundamente_aninhado_smelly, atributos_estilo_repetidos_smelly)
vioplot(recursos_smelly, c(layouts_clean,styles_clean), names=c("Mau Cheirosos", "Limpos") ,col="#00bfc4")


# WILCOXON & DELTA CLIFF
# por cada smell de componentes
wilcox.test(adapter_complexo_smelly, componentes_clean)
cliff.delta(adapter_complexo_smelly, componentes_clean)

wilcox.test(componente_ui_acoplado_smelly, componentes_clean)
cliff.delta(componente_ui_acoplado_smelly, componentes_clean)

wilcox.test(comportamento_suspeito_smelly, componentes_clean)
cliff.delta(comportamento_suspeito_smelly, componentes_clean)

wilcox.test(componente_ui_inteligente_smelly, componentes_clean)
cliff.delta(componente_ui_inteligente_smelly, componentes_clean)

# por cada smell de recursos
wilcox.test(longo_recurso_estilo_smelly, styles_clean)
cliff.delta(longo_recurso_estilo_smelly, styles_clean)

wilcox.test(layout_profundamente_aninhado_smelly, layouts_clean)
cliff.delta(layout_profundamente_aninhado_smelly, layouts_clean)

wilcox.test(atributos_estilo_repetidos_smelly, c(layouts_clean,styles_clean))
cliff.delta(atributos_estilo_repetidos_smelly, c(layouts_clean,styles_clean))

# por todos componentes
wilcox.test(componentes_smelly, componentes_clean)
cliff.delta(componentes_smelly, componentes_clean)

# por todos recursos
wilcox.test(recursos_smelly, c(layouts_clean,styles_clean))
cliff.delta(recursos_smelly, c(layouts_clean,styles_clean))

