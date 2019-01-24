#' Calculate the mds for the scells object
#' @param x the scell object
#' @param ndim the requested dimensions in the mds (default 3)
#' @param type the mds type to run ('Rtsne')
#' @param ... additional options for the mds function(s)
#' @return the scell object
#' @export CalcTSNE
CalcTSNE <- function ( x, ndim=3, type='Rtsne', ...) {

	if ( class(x)[[1]] != 'scell' ) {
                info = class(x)
                stop( paste("This function needs an scell object from packahe MyFirstPackage at startup, not ",  info[[1]], "from package", attr(info,"package") ) )
        }
	if ( type == 'Rtsne' ) {
		x@tsne = Rtsne::Rtsne( t(x@data), dims=ndim, ... )$Y
	}
	x
}

