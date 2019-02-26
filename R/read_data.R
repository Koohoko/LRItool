#' Extract the genomic sequence in LRIscan result
#'
#' This function takes the reference genome and LRIscan output together, and
#' extract the corresponding genomic sequence for further anaylsis,
#'
#' @param reference the reference genome in fasta format.
#' @param lri_output dataframe in csv format, contains at least five vairables:
#'   Name, Ai, Ai, Bi, Bj
#' @return a data frame containing extracted sequences.
#' @import stringr
#' @import dplyr
#' @examples
#' reference <- seqinr::read.fasta(system.file('extdata','reference_genome.fasta', package = 'LRItool'))
#' lri_output <- read.csv(system.file('extdata', 'lri_output.csv' , package = 'LRItool' ))
#' @author Haogao Gu
extract_seq <- function(reference, lri_output){
    lri_output %>% dplyr::rowwise() %>%
        dplyr::mutate(seq_A = str_c(reference[[1]][as.numeric(Ai):as.numeric(Aj)],collapse = '')) %>%
        dplyr::mutate(seq_B = str_c(reference[[1]][as.numeric(Bi):as.numeric(Bj)],collapse = ''))
}




