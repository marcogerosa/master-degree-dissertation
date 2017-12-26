library(vioplot)
library(effsize)

# gr??ficos violino componentes
adapter_complexo_smelly <- c(5,4,0,1,3,1,1,2,1,3,3,2,3,4,5,4,1,0,4,4,2,2,0,3,0,3,3,3,4,5,3,0,0,0,4,3)
adapter_complexo_clean <- c(1,0,2,2,0,4,4,0,2,0,5,4,0,0,0,0,3,1,0,4,4,0,0,2,3)

componente_ui_acoplado_smelly <- c(4,5,4,2,5,5,3,5,4,1,1,5,0,4,4,5,5,0,3,5,4,0,0,0,3,2)
componente_ui_acoplado_clean <- c(3,1,0,2,2,0,4,2,4,3,2,0,2,0,5,3,4,0,0,4,2,0,0,0,0,3,1,0,4,0,4,0,0,2,0,2,3,0,3)

comportamento_suspeito_smelly <- c(2,0,2,3,3,2,2,5,4,5,3,3,3,5,3,0,4,5,0,1,2,5,3,0,0,2,2,0,4,1,0,4,1,3,4,0,0,5,3)
comportamento_suspeito_clean <- c(1,2,0,2,3,0,0,5,0,0,0,1,4,0,0,2,0,2,3,0,0)

lcui_smelly <- c(5,4,1,0,2,4,2,2)
lcui_clean <- c(3,0,0,0,0,3,0,0,0,0,0,0)
componente_ui_inteligente_smelly <- c(5,3,4,3,0,0,2,4,0,2,4,2,5,3,1,2,3,0,4,5,5,5,4,5,5,4,5,3,5,2,3,4,lcui_smelly)
componente_ui_inteligente_clean <- c(3,1,0,2,2,0,4,0,2,4,3,2,0,2,0,5,4,0,0,0,4,2,5,0,0,3,1,0,4,0,4,0,0,2,3,3,0,lcui_clean)

vioplot(adapter_complexo_smelly, adapter_complexo_clean,
        componente_ui_acoplado_smelly, componente_ui_acoplado_clean,
        comportamento_suspeito_smelly, comportamento_suspeito_clean,
        componente_ui_inteligente_smelly, componente_ui_inteligente_clean,
        names=c("AC Mau Cheiroso", "AC Limpo", "CA Mau Cheiroso", "CA Limpo",
                "CS Mau Cheiroso", "CS Limpo", "CI Mau Cheiro", "CI Limpo")
        ,col="deepskyblue")

# vioplot(adapter_complexo_smelly, adapter_complexo_clean, names=c("Mau Cheiroso", "Limpo"),col="deepskyblue")
# title("Adapter Complexo")
# vioplot(componente_ui_acoplado_smelly, componente_ui_acoplado_clean, names=c("Mau Cheiroso", "Limpo"),col="deepskyblue")
# title("Componente de UI Acoplado")
# vioplot(comportamento_suspeito_smelly, comportamento_suspeito_clean, names=c("Mau Cheiroso", "Limpo"),col="deepskyblue")
# title("Comportamento Suspeito")
# vioplot(componente_ui_inteligente_smelly, componente_ui_inteligente_clean, names=c("Mau Cheiroso", "Limpo"),col="deepskyblue")
# title("Componente de UI Inteligente")

# gr??ficos violino recursos
longo_recurso_estilo_smelly <- c(0,3,0,2,3,3,0,0,1,0,1,0,4,0,2,0,1,2,3,0,1,0,4,0,0)
longo_recurso_estilo_clean <- c(0,3,2,0,2,5,3,0,1,2,0,2,3,0,2,0,0,0,0,0)

# artigo
lpa_smelly <- c(5,4,1,3)
lpa_clean <- c(2,0,0,0,0,2,0)
layout_profundamente_aninhado_smelly <- c(4,2,0,2,2,0,1,3,3,2,0,2,2,5,5,1,0,0,0,0,0,1,0,lpa_smelly)
layout_profundamente_aninhado_clean <- c(0,3,0,1,0,0,0,0,0,0,0,2,3,2,0,0,0,0,0,0,3,4,2,0,0,0,0,3,0,1,2,0,0,2,0,1,2,0,0,lpa_clean)

atributos_estilo_repetidos_smelly <- c(5,0,0,3,2,3,0,2,1,3,4,3,4,0,0,0,2,4,2,3,4,3,1)
atributos_estilo_repetidos_clean <- c(0,3,0,1,0,0,0,0,0,2,3,2,0,0,0,0,0,0,3,4,2,0,0,0,3,0,1,2,0,0,2,1,2,0,0)

 
vioplot(longo_recurso_estilo_smelly, longo_recurso_estilo_clean,
        layout_profundamente_aninhado_smelly, layout_profundamente_aninhado_clean,
        atributos_estilo_repetidos_smelly, atributos_estilo_repetidos_clean,
        names=c("LE Mau Cheiroso", "LE Limpo", "LA Mau Cheiroso", "LA Limpo", "AR Mau Cheiroso", "AR Limpo")
        ,col="deepskyblue")

# vioplot(longo_recurso_estilo_smelly, longo_recurso_estilo_clean, names=c("Mau Cheiroso", "LE Limpo") ,col="deepskyblue")
# title("Longo Recurso de Estilo")
# vioplot(layout_profundamente_aninhado_smelly, layout_profundamente_aninhado_clean, names=c("Mau Cheiroso", "LE Limpo") ,col="deepskyblue")
# title("Layout Profundamente Aninhado")
# vioplot(atributos_estilo_repetidos_smelly, atributos_estilo_repetidos_clean, names=c("Mau Cheiroso", "LE Limpo") ,col="deepskyblue")
# title("Atributos de Estilo Repetidos")

# GRAFICOS GERAL DE COMPONENTES E RECURSOS JUNTOS
componentes_smelly <- c(adapter_complexo_smelly, componente_ui_acoplado_smelly, comportamento_suspeito_smelly, componente_ui_inteligente_smelly)
componentes_clean <- c(adapter_complexo_clean, componente_ui_acoplado_clean, comportamento_suspeito_clean, componente_ui_inteligente_clean)
vioplot(componentes_smelly, componentes_clean, names=c("Componentes Smelly", "Componentes Limpos") ,col="deepskyblue")

recursos_smelly <- c(longo_recurso_estilo_smelly, layout_profundamente_aninhado_smelly, atributos_estilo_repetidos_smelly)
recursos_clean <- c(longo_recurso_estilo_clean, layout_profundamente_aninhado_clean, atributos_estilo_repetidos_clean)
vioplot(recursos_smelly, recursos_clean, names=c("Recursos Smelly", "Recursos Limpos") ,col="deepskyblue")

# SOH SMELLIES
# vioplot(adapter_complexo_smelly, componente_ui_acoplado_smelly, 
#         comportamento_suspeito_smelly, componente_ui_inteligente_smelly, 
#         longo_recurso_estilo_smelly, layout_profundamente_aninhado_smelly, 
#         atributos_estilo_repetidos_smelly,
#         names=c("AC", "CA", "CS", "CI", "LE", "LA", "AR") ,col="deepskyblue")

# SOH LIMPOS
# vioplot(adapter_complexo_clean, componente_ui_acoplado_clean, 
#         comportamento_suspeito_clean, componente_ui_inteligente_clean, 
#         longo_recurso_estilo_clean, layout_profundamente_aninhado_clean, 
#         atributos_estilo_repetidos_clean,
#         names=c("AC", "CA", "CS", "CI", "LE", "LA", "AR") ,col="deepskyblue")

# WILCOXON & DELTA CLIFF
# por cada smell de componentes
wilcox.test(adapter_complexo_smelly, adapter_complexo_clean)
cliff.delta(adapter_complexo_smelly, adapter_complexo_clean)

wilcox.test(componente_ui_acoplado_smelly, componente_ui_acoplado_clean)
cliff.delta(componente_ui_acoplado_smelly, componente_ui_acoplado_clean)

wilcox.test(comportamento_suspeito_smelly, comportamento_suspeito_clean)
cliff.delta(comportamento_suspeito_smelly, comportamento_suspeito_clean)

wilcox.test(componente_ui_inteligente_smelly, componente_ui_inteligente_clean)
cliff.delta(componente_ui_inteligente_smelly, componente_ui_inteligente_clean)

# por cada smell de recursos
wilcox.test(longo_recurso_estilo_smelly, longo_recurso_estilo_clean)
cliff.delta(longo_recurso_estilo_smelly, longo_recurso_estilo_clean)

wilcox.test(layout_profundamente_aninhado_smelly, layout_profundamente_aninhado_clean)
cliff.delta(layout_profundamente_aninhado_smelly, layout_profundamente_aninhado_clean)

wilcox.test(atributos_estilo_repetidos_smelly, atributos_estilo_repetidos_clean)
cliff.delta(atributos_estilo_repetidos_smelly, atributos_estilo_repetidos_clean)

# por todos componentes
wilcox.test(componentes_smelly, componentes_clean)
cliff.delta(componentes_smelly, componentes_clean)

# por todos recursos
wilcox.test(recursos_smelly, recursos_clean)
cliff.delta(recursos_smelly, recursos_clean)