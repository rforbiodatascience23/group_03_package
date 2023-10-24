#' DNA to RNA Transcription
#'
#' @param dnaSeq The DNA sequence to be transcribed
#'
#' @return The RNA transcript of the DNA sequence
#' @export
#'
#' @examples
dnaToRna <- function(dnaSeq){
  rnaSeq <- gsub("T", "U", dnaSeq)
  return(rnaSeq)
}
