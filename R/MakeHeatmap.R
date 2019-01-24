#' Create a heatmap using pheatmap and returning the plot object
#' @param x the MyFirstPackage object
#' @param genes a gene name vector
#' @param ... other options fead to the pheatmap function
#' @export MakeHeatmap
MakeHeatmap <- function(x, genes, ... ) {
	if ( class(x)[[1]] != 'scell' ) {
		info = class(x)
		stop( paste("This function needs an scell object from packahe MyFirstPackage at startup, not ",  info[[1]], "from package", attr(info,"package") ) )
	}
	m = match( genes, rownames(x@data) )
	if (length(which( is.na(m)) ) > 0 ){
		stop( paste( collapse = " ","The genes (", genes[which(is.na(m))], ") are unknown" ))
	}
	ret =  pheatmap::pheatmap (x@data, ... )
	print(ret)
	ret
}


