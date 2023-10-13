## Plotting function
## Need two environmental variables defined already: `fit`, `coefArgTb`

library(ggthemes)
vesuvius <- function(x) {
    
    if (x > nrow(coefArgTb)) {
        msg <- paste("The number of terms in the design is", nrow(coefArgTb))
        stop(msg)
    }
    
    topGenesTb <- topTable(fit, coef = x, p.value = 0.05, number = 1000)
    nametable <- cbind(topGenesTb, oldname = rownames(topGenesTb))
    
    nametable <- dplyr::inner_join(yasstax, nametable)
    nametable$Rank7[nametable$Rank7 == "none"] <- NA
    nametable$Rank6[nametable$Rank6 == "none"] <- NA
    nametable$Rank5[nametable$Rank5 == "none"] <- NA
    nametable$famnew <- paste0("f_", nametable$Rank5)
    nametable$Rank4[nametable$Rank4 == "none"] <- NA
    nametable$ordnew <- paste0("o_", nametable$Rank4)
    nametable$Rank3[nametable$Rank3 == "none"] <- NA
    nametable$clanew <- paste0("c_", nametable$Rank3)
    nametable$Rank2[nametable$Rank2 == "none"] <- NA
    nametable$phynew <- paste0("p_", nametable$Rank2)
    nametable$Rank1[nametable$Rank1 == "none"] <- NA
    nametable$kinnew <- paste0("k_", nametable$Rank1)
    
    nametable$specgen <- paste0("g_", nametable$Rank6, "_s_", nametable$Rank7) %>% 
        str_replace(pattern = "g__s_NA", "") %>% 
        str_replace(pattern = "_s_NA", "") %>% 
        str_replace(pattern = "g_NA", "")
    
    nametable$specgen[nametable$specgen == ""] <- NA
    nametable$famnew[nametable$famnew == "f_NA"] <- NA
    nametable$ordnew[nametable$ordnew == "o_NA"] <- NA
    nametable$clanew[nametable$clanew == "c_NA"] <- NA
    
    nametable <- nametable %>% 
        mutate(newname = coalesce(specgen, famnew, ordnew, 
                                  clanew, phynew, kinnew))
    
    ggplot(data = nametable, 
           aes(x = logFC, y = -log10(adj.P.Val), label = newname)) +
        geom_point() + 
        ggrepel::geom_text_repel() +
        theme_clean() +
        ggtitle(coefArgTb$term[x])
}



suptab <- function(x){
    topGenesTb <- topTable(fit, coef = x, p.value = 0.05, number = 1000)
    nametable <- cbind(topGenesTb, oldname = rownames(topGenesTb))
    
    nametable <- dplyr::inner_join(yasstax, nametable)
    nametable$Rank7[nametable$Rank7 == "none"] <- NA
    nametable$Rank6[nametable$Rank6 == "none"] <- NA
    nametable$Rank5[nametable$Rank5 == "none"] <- NA
    nametable$famnew <- paste0("f_", nametable$Rank5)
    nametable$Rank4[nametable$Rank4 == "none"] <- NA
    nametable$ordnew <- paste0("o_", nametable$Rank4)
    nametable$Rank3[nametable$Rank3 == "none"] <- NA
    nametable$clanew <- paste0("c_", nametable$Rank3)
    nametable$Rank2[nametable$Rank2 == "none"] <- NA
    nametable$phynew <- paste0("p_", nametable$Rank2)
    nametable$Rank1[nametable$Rank1 == "none"] <- NA
    nametable$kinnew <- paste0("k_", nametable$Rank1)
    
    nametable$specgen <- paste0("g_", nametable$Rank6, "_s_", nametable$Rank7) %>% 
        str_replace(pattern = "g__s_NA", "") %>% 
        str_replace(pattern = "_s_NA", "") %>% 
        str_replace(pattern = "g_NA", "")
    
    nametable$specgen[nametable$specgen == ""] <- NA
    nametable$famnew[nametable$famnew == "f_NA"] <- NA
    nametable$ordnew[nametable$ordnew == "o_NA"] <- NA
    nametable$clanew[nametable$clanew == "c_NA"] <- NA
    
    nametable <- nametable %>% 
        dplyr::mutate(ASV = paste0(coalesce(specgen, famnew, ordnew, clanew, phynew, kinnew), "_", oldname)) %>% 
        select(ASV, logFC, AveExpr, t, P.Value, adj.P.Val, B)
    
    return(nametable)
}