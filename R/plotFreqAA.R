#' Frequency plot of amino acids in sequence
#'
#' @param AASeq Protein sequence
#'
#' @return Plot of the frequency for amino acids
#' @export
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @examples
plotFreqAA <- function(AASeq){
  AASeq <- "AAAAMCGGDD"
  # Finding the unique amino acids present in the protein sequence
  uniqueAA <- AASeq |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()
  # Counting the frequency of the amino acids
  counts <- sapply(uniqueAA, function(amino_acid) stringr::str_count(string = AASeq, pattern =  amino_acid)) |>
    as.data.frame()
  # Renaming colum name for counts. Adding unique amino acids as variable (and not just row names)
  colnames(counts) <- c("Counts")
  counts[["AASeq"]] <- rownames(counts)
  # Creating plot of amino acid frequencies
  AAFreq <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = AASeq, y = Counts, fill = AASeq)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(AAFreq)
}
