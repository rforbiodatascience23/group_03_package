


#' randomDNAseq
#'
#' @param seqLength a number
#'
#' @return Returns a random dna sequence as a string of same length as the input number
#' @export
#'
#' @examples
randomDNAseq <- function(seqLength){
  sampleDNAList <- sample(c("A", "T", "G", "C"), size = seqLength, replace = TRUE)
  sampleDNAStr <- paste0(sampleDNAList, collapse = "")
  return(sampleDNAStr)
}
