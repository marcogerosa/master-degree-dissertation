library(vioplot)
library(effsize)

# gr??ficos violino componentes
adapter_complexo_smelly <- c(5,4,0,1,3,1,1,2,1,3,3,2,3,4,5,4,1,0,4,4,2,2,0,3,0,3,3,3,4,5,3,0,0,0,4,3)
adapter_complexo_clean <- c(3,1,0,2,2,0,4,2,4,3,2,0,2,0,5,4,0,0,4,2,0,0,3,1,0,4,0,4,0,0,2,3,3)

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
        names=c("Adapter Complexo Smelly", "Adapter Complexo Limpo",
                "Componente de UI Acoplado Smelly", "Componente de UI Acoplado Limpo",
                "Comportamento Suspeito Smelly", "Comportamento Suspeito Limpo",
                "Componente de UI Inteligente Smelly", "Componente de UI Inteligente Limpo")
        ,col="gold")


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
        names=c("Longo Recurso de Estilo Smelly", "Longo Recurso de Estilo Limpo",
        "Layout Profundamente Aninhado Smelly", "Layout Profundamente Aninhado Limpo",
        "Atributos de Estilo Repetidos Smelly", "Atributos de Estilo Repetidos Limpo")
        ,col="green")


# GRAFICOS GERAL DE COMPONENTES E RECURSOS JUNTOS
componentes_smelly <- c(adapter_complexo_smelly, componente_ui_acoplado_smelly, comportamento_suspeito_smelly, componente_ui_inteligente_smelly)
componentes_clean <- c(adapter_complexo_clean, componente_ui_acoplado_clean, comportamento_suspeito_clean, componente_ui_inteligente_clean)
vioplot(componentes_smelly, componentes_clean,
        names=c("Componentes Smelly", "Componentes Limpos")
        ,col="gold")

recursos_smelly <- c(longo_recurso_estilo_smelly, layout_profundamente_aninhado_smelly, atributos_estilo_repetidos_smelly)
recursos_clean <- c(longo_recurso_estilo_clean, layout_profundamente_aninhado_clean, atributos_estilo_repetidos_clean)
vioplot(recursos_smelly, recursos_clean,
        names=c("Recursos Smelly", "Recursos Limpos")
        ,col="green")



# SOH SMELLIES
vioplot(adapter_complexo_smelly, componente_ui_acoplado_smelly, 
        comportamento_suspeito_smelly, componente_ui_inteligente_smelly, 
        longo_recurso_estilo_smelly, layout_profundamente_aninhado_smelly, 
        atributos_estilo_repetidos_smelly,
        names=c("AC", "CA", "CS", "CI", "LE", "LA", "AR") ,col="gold")


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