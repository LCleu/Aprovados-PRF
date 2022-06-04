DF_PRF <- t(read.table("PRF2.txt", header = FALSE, sep = "/")) # separando cada aprovado em uma linha 

library(stringr)

DF_PRF1 <- str_split_fixed(DF_PRF,",",7) # separando em colunas diferentes as notas, o nome e a matricula
data_frame_prf1 <- as.data.frame(DF_PRF1) # transformando em DataFrame para melhor manipulação

colnames(data_frame_prf1)<-c("Matricula","Nome","Nota1","Nota2","Nota3","Nota4","Nota5") #adcionando o nome das colunas

library(xlsx)
write.xlsx(data_frame_prf1,"PRF_notas.xlsx",row.names = FALSE) # row.names = false, excluindo a primeira coluna de números 

