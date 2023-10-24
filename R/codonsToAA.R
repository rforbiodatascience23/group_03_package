#' Convert input codons via codon table to Amino acids
#'
#' @param codons Input condons generated
#'
#' @return Return Amino acids from codon
#' @export
#'
#' @examples
codonsToAA <- function(codons){
  pasteAA <- paste0(codonTable[codons], collapse = "")
  return(pasteAA)
}
