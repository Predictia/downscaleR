#' @title Total cloud cover fraction to okta
#' @description Conversion of total cloud cover in parts per unit to oktas (0-8)
#' 
#' @param tcc (1)
#' @return vector of tcc in oktas
#' @author M Tuni \email{max@@predictia.es}
#' @keywords internal
#' @family conversion
#' @export

tcc2tcco <- function(tcc) {
      tcco <- round(tcc * 8) 
      tcco[tcco < 0] = 0
      tcco[tcco > 8] = 8
      return(tcco)
}
# End 
