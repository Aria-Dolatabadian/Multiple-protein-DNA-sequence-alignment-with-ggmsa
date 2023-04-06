#Place "genomes.fasta" or "seq.fa" in C:\Users\...\AppData\Local\R\win-library\4.2\ggmsa\extdata

library(ggmsa)
protein_sequences <- system.file("extdata", "genomes.fasta", package = "ggmsa")
ggmsa(protein_sequences, start = 221, end = 280, char_width = 0.5, seq_name = T) + geom_seqlogo() + geom_msaBar()

#and

nt_sequence <- system.file("extdata", "LeaderRepeat_All.fa", package = "ggmsa")
ggmsa(nt_sequence,font = NULL, color = "Chemistry_NT") + 
    geom_seqlogo(color = "Chemistry_NT") + geom_GC()
