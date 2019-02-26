reference <- seqinr::read.fasta(system.file('extdata','reference_genome.fasta', package = 'LRItool'))
lri_output <- read.csv(system.file('extdata', 'lri_output.csv' , package = 'LRItool' ))

extract_seq(reference,lri_output)
