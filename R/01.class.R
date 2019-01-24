#'Class defintion of an scell object
#`
#`The class takes a matrix of values and needs row and column names.
setClass("scell",
	 slots=c(
		 data="matrix",
		 var.genes="character",
		 tsne='list'
		 )
	 )


