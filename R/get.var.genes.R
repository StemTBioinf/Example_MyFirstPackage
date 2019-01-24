#'Calculates the top N variable genes from a scell object
#'@param sco An scell object
#'@param nvar The number of genes we wich to retrieve
#'@export get.var.genes
get.var.genes <- function(sco,nvar){
  
  genes.var <- apply(sco@data,1,stats::var)
  top.var.genes <- names(rev(sort(genes.var))[1:nvar])
  sco@var.genes <- top.var.genes #puts the var genes into a new slot 
  sco #returns the new object
}
