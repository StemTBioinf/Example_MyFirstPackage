#' Creates a MyFirstPackage object from a table file
#'@param fname the name of the table
#' @param row.names see read.delim documentation defaults to 1
#' @param header see read.delim documentation defaults to TRUE
#' @param sep see read.delim documentation defaults to '\\t'
#'@export as_MyFirstPackage
as_MyFirstPackage <- function( fname, row.names=1, header=TRUE, sep="\t" ) {
	if ( ! file.exists(fname)){
		stop(paste( "File not found!", fname))
	}
	exp.vals <- utils::read.delim(fname, row.names=row.names, header=header,sep=sep)
	hspc.s4 <- methods::new("scell",data=as.matrix(exp.vals))
	hspc.s4
}


