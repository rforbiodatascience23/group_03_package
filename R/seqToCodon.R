#' Convert input sequence to codons
#'
#' @param inputSeq This is the input sequence
#' @param start Position to start in the sequence
#'
#' @return Function returns codons from input sequence
#' @export
#'
#' @examples
seqToCodon <- function(inputSeq, start = 1){
  sizeSeq <- nchar(inputSeq)
  codons <- substring(inputSeq,
                      first = seq(from = start, to = sizeSeq-3+1, by = 3),
                      last = seq(from = 3+start-1, to = sizeSeq, by = 3))
  return(codons)
}
