#file.choose()

# Importing packages and libraries:
install.packages("readxl")
library("readxl")

#-------------------------------------------------------------------------------
#G1 - EMG + EDA + ECG:
dados <- read_excel("C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\neutral_features_excerpts_s1.xlsx", sheet = "G1")
print(dados)
dadosG1<-dados[,-1]
rownames(dadosG1)<-dados$Participante
print(dadosG1)
print(rownames(dadosG1))

#G1 - EMG
dados1_EMG <- read_excel("C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\neutral_features_excerpts_s1.xlsx", sheet = "G1_EMG")
print(dados1_EMG)
dadosG1_EMG<-dados1_EMG[,-1]
rownames(dadosG1_EMG)<-dados1_EMG$Participante
print(dadosG1_EMG)
print(rownames(dadosG1_EMG))

#G1 - EDA
dados1_EDA <- read_excel("C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\neutral_features_excerpts_s1.xlsx", sheet = "G1_EDA")
print(dados1_EDA)
dadosG1_EDA<-dados1_EDA[,-1]
rownames(dadosG1_EDA)<-dados1_EDA$Participante
print(dadosG1_EDA)
print(rownames(dadosG1_EDA))

#G1 - ECG
dados1_ECG <- read_excel("C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\neutral_features_excerpts_s1.xlsx", sheet = "G1_ECG")
print(dados1_ECG)
dadosG1_ECG<-dados1_ECG[,-1]
rownames(dadosG1_ECG)<-dados1_ECG$Participante
print(dadosG1_ECG)
print(rownames(dadosG1_ECG))

#-------------------------------------------------------------------------------
#G2 - EMG + EDA + ECG: 
dados2 <- read_excel("C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\neutral_features_excerpts_s1.xlsx", sheet = "G2")
print(dados2)
dadosG2<-dados2[,-1]
rownames(dadosG2)<-dados2$Participante
print(dadosG2)
print(rownames(dadosG2))

#G2 - EMG
dados2_EMG <- read_excel("C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\neutral_features_excerpts_s1.xlsx", sheet = "G2_EMG")
print(dados2_EMG)
dadosG2_EMG<-dados2_EMG[,-1]
rownames(dadosG2_EMG)<-dados2_EMG$Participante
print(dadosG2_EMG)
print(rownames(dadosG2_EMG))

#G2 - EDA
dados2_EDA <- read_excel("C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\neutral_features_excerpts_s1.xlsx", sheet = "G2_EDA")
print(dados2_EDA)
dadosG2_EDA<-dados2_EDA[,-1]
rownames(dadosG2_EDA)<-dados2_EDA$Participante
print(dadosG2_EDA)
print(rownames(dadosG2_EDA))

#G2 - ECG
dados2_ECG <- read_excel("C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\neutral_features_excerpts_s1.xlsx", sheet = "G2_ECG")
print(dados2_ECG)
dadosG2_ECG<-dados2_ECG[,-1]
rownames(dadosG2_ECG)<-dados2_ECG$Participante
print(dadosG2_ECG)
print(rownames(dadosG2_ECG))

#-------------------------------------------------------------------------------
#G3 - EMG + EDA + ECG: :
dados3 <- read_excel("C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\neutral_features_excerpts_s1.xlsx", sheet = "G3")
print(dados3)
dadosG3<-dados3[,-1]
rownames(dadosG3)<-dados3$Participante
print(dadosG3)
print(rownames(dadosG3))

#G3 - EMG
dados3_EMG <- read_excel("C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\neutral_features_excerpts_s1.xlsx", sheet = "G3_EMG")
print(dados3_EMG)
dadosG3_EMG<-dados3_EMG[,-1]
rownames(dadosG3_EMG)<-dados3_EMG$Participante
print(dadosG3_EMG)
print(rownames(dadosG3_EMG))

#G3 - EDA
dados3_EDA <- read_excel("C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\neutral_features_excerpts_s1.xlsx", sheet = "G3_EDA")
print(dados3_EDA)
dadosG3_EDA<-dados3_EDA[,-1]
rownames(dadosG3_EDA)<-dados3_EDA$Participante
print(dadosG3_EDA)
print(rownames(dadosG3_EDA))

#G3 - ECG
dados3_ECG <- read_excel("C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\neutral_features_excerpts_s1.xlsx", sheet = "G3_ECG")
print(dados3_ECG)
dadosG3_ECG<-dados3_ECG[,-1]
rownames(dadosG3_ECG)<-dados3_ECG$Participante
print(dadosG3_ECG)
print(rownames(dadosG3_ECG))


#-------------------------------------------------------------------------------
# Instalação de alguns packages: 
install.packages("rlang")
library(rlang)
sessionInfo()
remove.packages(rlang)
install.packages("rlang")

remove.packages(c("ggplot2", "data.table"))
install.packages('Rcpp', dependencies = TRUE)
install.packages("ggplot2", dependencies = TRUE)
remove.packages(ggplot2)
install.packages("ggplot2")
library(ggplot2)
install.packages("Rtools")


install.packages("FactoMineR")
library("FactoMineR")

install.packages("factoextra")
library("factoextra")

# --------------------------------------------------------------------------------
# G1 - EMG + EDA + ECG: 
# ACP sobre dados normalizados
res2=prcomp(dadosG1, center = TRUE, scale=TRUE)
res2

# Criar uma tabela com os loadings:
tabela=as.table(res2$rotation)
tabela

# Os individuos expressos nas novas CP's:
res2$x
tabela2=as.table(res2$x)
tabela2
tabela2 <- as.data.frame.matrix(tabela2)

# Summary:
summary(res2)
tabela3 = as.table(summary(res2)$importance)
tabela3 
tabela3 <- as.data.frame.matrix(tabela3)

# Transferir os dados da tabela para excel:
install.packages("openxlsx")
library("openxlsx")

wb <- createWorkbook()
addWorksheet(wb, "Loadings")
addWorksheet(wb, "Componentes principais")
addWorksheet(wb, "Summary")


writeData(wb, "Loadings", tabela, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Componentes principais", tabela2, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Summary", tabela3, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)


saveWorkbook(wb, file = "C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\features_neutral_excerpts\\resultados_pca_features_neutral_G1_EMG_EDA_ECG.xlsx", overwrite = TRUE)

# --------------------------------------------------------------------------------------------
b<-summary(res2)
loading=cor(res2$x,dados); round(loading,3)
loading=t(res2$rotation); round(loading,3)

# Obter a variável com maior loading para cada componente principal:
x=abs(loading); 
a=NULL
for (i in 1:(dim(dados)[2]))
{a[i]=colnames(x)[which.max(x[i,])]}
a=rbind(rownames(loading),a)  
a

# --------------------------------------------------------------------------------------------
get_eig(res2)

# Scree plot - PC's
p <- fviz_screeplot(res2, addlabels = TRUE, hjust = -0.3,  barfill="lightgray", barcolor ="black",linecolor ="red",  ylim = c(0, 60))
p + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10))+ labs(title = "Variances - PCA",x = "Principal Components", y = "% of variances")+ theme(plot.title = element_text(hjust = 0.5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EMG_EDA_ECG_Variances_PCA_Neutral.png",dpi = 300,bg = "white")

# PCA Variables graph
fviz_pca_var(res2, col.var="contrib", gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Variables - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EMG_EDA_ECG_Variables_PCA_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC1
#fviz_contrib(res2, choice = "var", axes = 1, top =50)
fviz_contrib(res2, choice="var", axes = 1, top=50, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EMG_EDA_ECG_Contributions_to_pc1_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC2
fviz_contrib(res2, choice="var", axes = 2, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 6)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EMG_EDA_ECG_Contributions_to_pc2_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC3
fviz_contrib(res2, choice="var", axes = 3, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC3") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 6)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EMG_EDA_ECG_Contributions_to_pc3_Neutral.png",dpi = 300,bg = "white")

# Extract the results for individuals
fviz_pca_ind(res2, col.ind = "cos2",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),repel = TRUE ) + labs(title = "Individuals - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EMG_EDA_ECG_Individuals_PCA_Neutral.png",dpi = 300,bg = "white")

# Biplot
fviz_pca_biplot(res2,col.var="contrib",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Biplot") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EMG_EDA_ECG_Biplot_Neutral.png",dpi = 300,bg = "white")


# Highlight the most contributing variables for each dimension
library("corrplot")
var <- get_pca_var(res2)
corrplot(var$contrib, is.corr=FALSE) 

# Total contribution on PC1,PC2 and PC3:
fviz_contrib(res2, choice = "var", axes = 1:2, top =85, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1 and PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank()))
ggsave("G1_EMG_EDA_ECG_Contributions_to_pc1+pc2_Neutral.png",dpi = 300,bg = "white")


# Gráficos 3D: 
scores = as.data.frame(res2$x)
head(scores[1:4])

install.packages("rgl")
library(rgl)

sum.res2=summary(res2)

plot3d(scores[,1:3],xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"), 
       size=5,
       col="black")

text3d(scores[,1:3],
       texts=c(rownames(scores)), 
       cex= 0.7, pos=3)

require(scatterplot3d)
require(rgl)
png("G1_EMG_EDA_ECG_3D_scatterplot_Neutral.png",units="in",width=6,height=5,res=600)
s3d <- scatterplot3d(scores[,1:3],  pch = 16,grid=TRUE, box=TRUE,main="3D Scatter Plot (G1 - EMG+EDA+ECG features - Neutral)", xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"))
text(s3d$xyz.convert(scores[, 1:3]), labels = rownames(scores),
     cex= 0.7, pos=3, col = "steelblue")
dev.off()
# --------------------------------------------------------------------------------
# G1 - EMG: 
# ACP sobre dados normalizados
res2=prcomp(dadosG1_EMG, center = TRUE, scale=TRUE)
res2

# Criar uma tabela com os loadings:
tabela=as.table(res2$rotation)
tabela

# Os individuos expressos nas novas CP's:
res2$x
tabela2=as.table(res2$x)
tabela2
tabela2 <- as.data.frame.matrix(tabela2)

# Summary:
summary(res2)
tabela3 = as.table(summary(res2)$importance)
tabela3 
tabela3 <- as.data.frame.matrix(tabela3)

# Transferir os dados da tabela para excel:
install.packages("openxlsx")
library("openxlsx")

wb <- createWorkbook()
addWorksheet(wb, "Loadings")
addWorksheet(wb, "Componentes principais")
addWorksheet(wb, "Summary")


writeData(wb, "Loadings", tabela, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Componentes principais", tabela2, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Summary", tabela3, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)


saveWorkbook(wb, file = "C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\features_neutral_excerpts\\resultados_pca_features_neutral_G1_EMG.xlsx", overwrite = TRUE)

# --------------------------------------------------------------------------------------------
b<-summary(res2)
loading=cor(res2$x,dados); round(loading,3)
loading=t(res2$rotation); round(loading,3)

# Obter a variável com maior loading para cada componente principal:
x=abs(loading); 
a=NULL
for (i in 1:(dim(dados)[2]))
{a[i]=colnames(x)[which.max(x[i,])]}
a=rbind(rownames(loading),a)  
a

# --------------------------------------------------------------------------------------------
get_eig(res2)

# Scree plot - PC's
p <- fviz_screeplot(res2, addlabels = TRUE, hjust = -0.3,  barfill="lightgray", barcolor ="black",linecolor ="red",  ylim = c(0, 80))
p + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10))+ labs(title = "Variances - PCA",x = "Principal Components", y = "% of variances")+ theme(plot.title = element_text(hjust = 0.5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EMG_Variances_PCA_Neutral.png",dpi = 300,bg = "white")

# PCA Variables graph
fviz_pca_var(res2, col.var="contrib", gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Variables - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EMG_Variables_PCA_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC1
#fviz_contrib(res2, choice = "var", axes = 1, top =50)
fviz_contrib(res2, choice="var", axes = 1, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EMG_Contributions_to_pc1_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC2
fviz_contrib(res2, choice="var", axes = 2, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EMG_Contributions_to_pc2_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC3
fviz_contrib(res2, choice="var", axes = 3, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC3") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EMG_Contributions_to_pc3_Fear.png",dpi = 300,bg = "white")

# Extract the results for individuals
fviz_pca_ind(res2, col.ind = "cos2",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),repel = TRUE ) + labs(title = "Individuals - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EMG_Individuals_PCA_Neutral.png",dpi = 300,bg = "white")

# Biplot
fviz_pca_biplot(res2,col.var="contrib",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Biplot") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EMG_Biplot_Neutral.png",dpi = 300,bg = "white")


# Highlight the most contributing variables for each dimension
library("corrplot")
var <- get_pca_var(res2)
corrplot(var$contrib, is.corr=FALSE) 
ggsave("G1_EMG_Contributions_Neutral.png",dpi = 300,bg = "white")

# Total contribution on PC1,PC2 and PC3:
fviz_contrib(res2, choice = "var", axes = 1:2, top =85, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1 and PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank()))
ggsave("G1_EMG_Contributions_to_pc1+pc2_Neutral.png",dpi = 300,bg = "white")

# Gráficos 3D: 
scores = as.data.frame(res2$x)
head(scores[1:4])

sum.res2=summary(res2)

plot3d(scores[,1:3],xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"), 
       size=5,
       col="black")

text3d(scores[,1:3],
       texts=c(rownames(scores)), 
       cex= 0.7, pos=3)

png("G1_EMG_3D_scatterplot_Neutral.png",units="in",width=6,height=5,res=600)
s3d <- scatterplot3d(scores[,1:3],  pch = 16,grid=TRUE, box=TRUE,main="3D Scatter Plot (G1 - EMG features - Neutral)", xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"))
text(s3d$xyz.convert(scores[, 1:3]), labels = rownames(scores),
     cex= 0.7, pos=3, col = "steelblue")
dev.off()

### --------------------------------------------------------
#G1 - EDA
# ACP sobre dados normalizados
res2=prcomp(dadosG1_EDA, center = TRUE, scale=TRUE)
res2
# Criar uma tabela com os loadings:
tabela=as.table(res2$rotation)
tabela

# Os individuos expressos nas novas CP's:
res2$x
tabela2=as.table(res2$x)
tabela2
tabela2 <- as.data.frame.matrix(tabela2)

# Summary:
summary(res2)
tabela3 = as.table(summary(res2)$importance)
tabela3 
tabela3 <- as.data.frame.matrix(tabela3)

# Transferir os dados da tabela para excel:
install.packages("openxlsx")
library("openxlsx")

wb <- createWorkbook()
addWorksheet(wb, "Loadings")
addWorksheet(wb, "Componentes principais")
addWorksheet(wb, "Summary")


writeData(wb, "Loadings", tabela, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Componentes principais", tabela2, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Summary", tabela3, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)


saveWorkbook(wb, file = "C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\features_neutral_excerpts\\resultados_pca_features_neutral_G1_EDA.xlsx", overwrite = TRUE)

# --------------------------------------------------------------------------------------------
b<-summary(res2)
loading=cor(res2$x,dados); round(loading,3)
loading=t(res2$rotation); round(loading,3)

# Obter a variável com maior loading para cada componente principal:
x=abs(loading); 
a=NULL
for (i in 1:(dim(dados)[2]))
{a[i]=colnames(x)[which.max(x[i,])]}
a=rbind(rownames(loading),a)  
a

# --------------------------------------------------------------------------------------------
get_eig(res2)

# Scree plot - PC's
p <- fviz_screeplot(res2, addlabels = TRUE, hjust = -0.3,  barfill="lightgray", barcolor ="black",linecolor ="red",  ylim = c(0, 60))
p + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10))+ labs(title = "Variances - PCA",x = "Principal Components", y = "% of variances")+ theme(plot.title = element_text(hjust = 0.5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EDA_Variances_PCA_Neutral.png",dpi = 300,bg = "white")

# PCA Variables graph
fviz_pca_var(res2, col.var="contrib", gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Variables - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EDA_Variables_PCA_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC1
#fviz_contrib(res2, choice = "var", axes = 1, top =50)
fviz_contrib(res2, choice="var", axes = 1, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EDA_Contributions_to_pc1_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC2
fviz_contrib(res2, choice="var", axes = 2, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EDA_Contributions_to_pc2_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC3
fviz_contrib(res2, choice="var", axes = 3, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC3") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EDA_Contributions_to_pc3_Neutral.png",dpi = 300,bg = "white")

# Extract the results for individuals
fviz_pca_ind(res2, col.ind = "cos2",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),repel = TRUE ) + labs(title = "Individuals - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EDA_Individuals_PCA_Neutral.png",dpi = 300,bg = "white")

# Biplot
fviz_pca_biplot(res2,col.var="contrib",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Biplot") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_EDA_Biplot_Neutral.png",dpi = 300,bg = "white")


# Highlight the most contributing variables for each dimension
library("corrplot")
var <- get_pca_var(res2)
corrplot(var$contrib, is.corr=FALSE) 
ggsave("G1_EDA_Contributions_Neutral.png",dpi = 300,bg = "white")

# Total contribution on PC1,PC2 and PC3:
fviz_contrib(res2, choice = "var", axes = 1:2, top =85, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1 and PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank()))
ggsave("G1_EDA_Contributions_to_pc1+pc2_Neutral.png",dpi = 300,bg = "white")

# Gráficos 3D: 
scores = as.data.frame(res2$x)
head(scores[1:4])

sum.res2=summary(res2)

plot3d(scores[,1:3],xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"), 
       size=5,
       col="black")

text3d(scores[,1:3],
       texts=c(rownames(scores)), 
       cex= 0.7, pos=3)

png("G1_EDA_3D_scatterplot_Neutral.png",units="in",width=6,height=5,res=600)
s3d <- scatterplot3d(scores[,1:3],  pch = 16,grid=TRUE, box=TRUE,main="3D Scatter Plot (G1 - EDA features - Neutral)", xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"))
text(s3d$xyz.convert(scores[, 1:3]), labels = rownames(scores),
     cex= 0.7, pos=3, col = "steelblue")
dev.off()



# -------------------------------------------------------------------------------
# G1 - ECG: 
# ACP sobre dados normalizados
res2=prcomp(dadosG1_ECG, center = TRUE, scale=TRUE)
res2

tabela=as.table(res2$rotation)
tabela

# Os individuos expressos nas novas CP's:
res2$x
tabela2=as.table(res2$x)
tabela2
tabela2 <- as.data.frame.matrix(tabela2)

# Summary:
summary(res2)
tabela3 = as.table(summary(res2)$importance)
tabela3 
tabela3 <- as.data.frame.matrix(tabela3)

# Transferir os dados da tabela para excel:
install.packages("openxlsx")
library("openxlsx")

wb <- createWorkbook()
addWorksheet(wb, "Loadings")
addWorksheet(wb, "Componentes principais")
addWorksheet(wb, "Summary")


writeData(wb, "Loadings", tabela, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Componentes principais", tabela2, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Summary", tabela3, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)


saveWorkbook(wb, file = "C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\features_neutral_excerpts\\resultados_pca_features_neutral_G1_ECG.xlsx", overwrite = TRUE)

# --------------------------------------------------------------------------------------------
b<-summary(res2)
loading=cor(res2$x,dados); round(loading,3)
loading=t(res2$rotation); round(loading,3)

# Obter a variável com maior loading para cada componente principal:
x=abs(loading); 
a=NULL
for (i in 1:(dim(dados)[2]))
{a[i]=colnames(x)[which.max(x[i,])]}
a=rbind(rownames(loading),a)  
a

# --------------------------------------------------------------------------------------------
get_eig(res2)

# Scree plot - PC's
p <- fviz_screeplot(res2, addlabels = TRUE, hjust = -0.3,  barfill="lightgray", barcolor ="black",linecolor ="red",  ylim = c(0, 60))
p + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10))+ labs(title = "Variances - PCA",x = "Principal Components", y = "% of variances")+ theme(plot.title = element_text(hjust = 0.5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_ECG_Variances_PCA_Neutral.png",dpi = 300,bg = "white")

# PCA Variables graph
fviz_pca_var(res2, col.var="contrib", gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Variables - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_ECG_Variables_PCA_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC1
#fviz_contrib(res2, choice = "var", axes = 1, top =50)
fviz_contrib(res2, choice="var", axes = 1, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_ECG_Contributions_to_pc1_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC2
fviz_contrib(res2, choice="var", axes = 2, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_ECG_Contributions_to_pc2_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC3
fviz_contrib(res2, choice="var", axes = 3, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC3") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_ECG_Contributions_to_pc3_Neutral.png",dpi = 300,bg = "white")

# Extract the results for individuals
fviz_pca_ind(res2, col.ind = "cos2",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),repel = TRUE ) + labs(title = "Individuals - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_ECG_Individuals_PCA_Neutral.png",dpi = 300,bg = "white")

# Biplot
fviz_pca_biplot(res2,col.var="contrib",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Biplot") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G1_ECG_Biplot_Neutral.png",dpi = 300,bg = "white")

# Highlight the most contributing variables for each dimension
library("corrplot")
var <- get_pca_var(res2)
corrplot(var$contrib, is.corr=FALSE) 
ggsave("G1_ECG_Contributions_Neutral.png",dpi = 300,bg = "white")

# Total contribution on PC1,PC2 and PC3:
fviz_contrib(res2, choice = "var", axes = 1:2, top =85, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1 and PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank()))
ggsave("G1_ECG_Contributions_to_pc1+pc2_Neutral.png",dpi = 300,bg = "white")

# Gráficos 3D: 
scores = as.data.frame(res2$x)
head(scores[1:4])

sum.res2=summary(res2)

plot3d(scores[,1:3],xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"), 
       size=5,
       col="black")

text3d(scores[,1:3],
       texts=c(rownames(scores)), 
       cex= 0.7, pos=3)

png("G1_ECG_3D_scatterplot_Neutral.png",units="in",width=6,height=5,res=600)
s3d <- scatterplot3d(scores[,1:3],  pch = 16,grid=TRUE, box=TRUE,main="3D Scatter Plot (G1 - ECG features - Neutral)", xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"))
text(s3d$xyz.convert(scores[, 1:3]), labels = rownames(scores),
     cex= 0.7, pos=3, col = "steelblue")
dev.off()

# --------------------------------------------------------------------------------
# G2 - EMG + EDA + ECG: 
# ACP sobre dados normalizados
res2=prcomp(dadosG2, center = TRUE, scale=TRUE)
res2
tabela=as.table(res2$rotation)
tabela

# Os individuos expressos nas novas CP's:
res2$x
tabela2=as.table(res2$x)
tabela2
tabela2 <- as.data.frame.matrix(tabela2)

# Summary:
summary(res2)
tabela3 = as.table(summary(res2)$importance)
tabela3 
tabela3 <- as.data.frame.matrix(tabela3)

# Transferir os dados da tabela para excel:
install.packages("openxlsx")
library("openxlsx")

wb <- createWorkbook()
addWorksheet(wb, "Loadings")
addWorksheet(wb, "Componentes principais")
addWorksheet(wb, "Summary")


writeData(wb, "Loadings", tabela, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Componentes principais", tabela2, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Summary", tabela3, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)


saveWorkbook(wb, file = "C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\features_neutral_excerpts\\resultados_pca_features_neutral_G2_EMG_EDA_ECG.xlsx", overwrite = TRUE)

# --------------------------------------------------------------------------------------------
b<-summary(res2)
loading=cor(res2$x,dados); round(loading,3)
loading=t(res2$rotation); round(loading,3)

# Obter a variável com maior loading para cada componente principal:
x=abs(loading); 
a=NULL
for (i in 1:(dim(dados)[2]))
{a[i]=colnames(x)[which.max(x[i,])]}
a=rbind(rownames(loading),a)  
a

# --------------------------------------------------------------------------------------------
get_eig(res2)

# Scree plot - PC's
p <- fviz_screeplot(res2, addlabels = TRUE, hjust = -0.3,  barfill="lightgray", barcolor ="black",linecolor ="red",  ylim = c(0, 50))
p + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10))+ labs(title = "Variances - PCA",x = "Principal Components", y = "% of variances")+ theme(plot.title = element_text(hjust = 0.5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EMG_EDA_ECG_Variances_PCA_Neutral.png",dpi = 300,bg = "white")

# PCA Variables graph
fviz_pca_var(res2, col.var="contrib", gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Variables - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EMG_EDA_ECG_Variables_PCA_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC1
#fviz_contrib(res2, choice = "var", axes = 1, top =50)
fviz_contrib(res2, choice="var", axes = 1, top=50, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EMG_EDA_ECG_Contributions_to_pc1_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC2
fviz_contrib(res2, choice="var", axes = 2, top=50, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EMG_EDA_ECG_Contributions_to_pc2_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC3
fviz_contrib(res2, choice="var", axes = 3, top=50, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC3") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EMG_EDA_ECG_Contributions_to_pc3_Neutral.png",dpi = 300,bg = "white")

# Extract the results for individuals
fviz_pca_ind(res2, col.ind = "cos2",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),repel = TRUE ) + labs(title = "Individuals - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EMG_EDA_ECG_Individuals_PCA_Neutral.png",dpi = 300,bg = "white")

# Biplot
fviz_pca_biplot(res2,col.var="contrib",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Biplot") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EMG_EDA_ECG_Biplot_Neutral.png",dpi = 300,bg = "white")


# Highlight the most contributing variables for each dimension
library("corrplot")
var <- get_pca_var(res2)
corrplot(var$contrib, is.corr=FALSE) 
ggsave("G2_EMG+EDA+ECG_Contributions_Neutral.png",dpi = 300,bg = "white")

# Total contribution on PC1,PC2 and PC3:
fviz_contrib(res2, choice = "var", axes = 1:2, top =85, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1 and PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank()))
ggsave("G2_EMG+EDA+ECG_Contributions_to_pc1+pc2_Neutral.png",dpi = 300,bg = "white")


# Gráficos 3D: 
scores = as.data.frame(res2$x)
head(scores[1:4])

sum.res2=summary(res2)

plot3d(scores[,1:3],xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"), 
       size=5,
       col="black")

text3d(scores[,1:3],
       texts=c(rownames(scores)), 
       cex= 0.7, pos=3)

png("G2_EMG_EDA_ECG_3D_scatterplot_Neutral.png",units="in",width=6,height=5,res=600)
s3d <- scatterplot3d(scores[,1:3],  pch = 16,grid=TRUE, box=TRUE,main="3D Scatter Plot (G2 - EMG+EDA+ECG features - Neutral)", xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"))
text(s3d$xyz.convert(scores[, 1:3]), labels = rownames(scores),
     cex= 0.7, pos=3, col = "steelblue")
dev.off()
# ------------------------------------------------------------------------------
# G2 - EMG: 
# ACP sobre dados normalizados
res2=prcomp(dadosG2_EMG, center = TRUE, scale=TRUE)
res2
tabela=as.table(res2$rotation)
tabela

# Os individuos expressos nas novas CP's:
res2$x
tabela2=as.table(res2$x)
tabela2
tabela2 <- as.data.frame.matrix(tabela2)

# Summary:
summary(res2)
tabela3 = as.table(summary(res2)$importance)
tabela3 
tabela3 <- as.data.frame.matrix(tabela3)

# Transferir os dados da tabela para excel:
install.packages("openxlsx")
library("openxlsx")

wb <- createWorkbook()
addWorksheet(wb, "Loadings")
addWorksheet(wb, "Componentes principais")
addWorksheet(wb, "Summary")


writeData(wb, "Loadings", tabela, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Componentes principais", tabela2, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Summary", tabela3, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)


saveWorkbook(wb, file = "C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\features_neutral_excerpts\\resultados_pca_features_neutral_G2_EMG.xlsx", overwrite = TRUE)

# --------------------------------------------------------------------------------------------
b<-summary(res2)
loading=cor(res2$x,dados); round(loading,3)
loading=t(res2$rotation); round(loading,3)

# Obter a variável com maior loading para cada componente principal:
x=abs(loading); 
a=NULL
for (i in 1:(dim(dados)[2]))
{a[i]=colnames(x)[which.max(x[i,])]}
a=rbind(rownames(loading),a)  
a

# --------------------------------------------------------------------------------------------
get_eig(res2)

# Scree plot - PC's
p <- fviz_screeplot(res2, addlabels = TRUE, hjust = -0.3,  barfill="lightgray", barcolor ="black",linecolor ="red",  ylim = c(0, 50))
p + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10))+ labs(title = "Variances - PCA",x = "Principal Components", y = "% of variances")+ theme(plot.title = element_text(hjust = 0.5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EMG_Variances_PCA_Neutral.png",dpi = 300,bg = "white")

# PCA Variables graph
fviz_pca_var(res2, col.var="contrib", gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Variables - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EMG_Variables_PCA_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC1
#fviz_contrib(res2, choice = "var", axes = 1, top =50)
fviz_contrib(res2, choice="var", axes = 1, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EMG_Contributions_to_pc1_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC2
fviz_contrib(res2, choice="var", axes = 2, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EMG_Contributions_to_pc2_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC3
fviz_contrib(res2, choice="var", axes = 3, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC3") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EMG_Contributions_to_pc3_Neutral.png",dpi = 300,bg = "white")

# Extract the results for individuals
fviz_pca_ind(res2, col.ind = "cos2",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),repel = TRUE ) + labs(title = "Individuals - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EMG_Individuals_PCA_Neutral.png",dpi = 300,bg = "white")

# Biplot
fviz_pca_biplot(res2,col.var="contrib",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Biplot") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EMG_Biplot_Neutral.png",dpi = 300,bg = "white")


# Highlight the most contributing variables for each dimension
library("corrplot")
var <- get_pca_var(res2)
corrplot(var$contrib, is.corr=FALSE) 
ggsave("G2_EMG_Contributions_Neutral.png",dpi = 300,bg = "white")

# Total contribution on PC1,PC2 and PC3:
fviz_contrib(res2, choice = "var", axes = 1:2, top =85, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1 and PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank()))
ggsave("G2_EMG_Contributions_to_pc1+pc2_Neutral.png",dpi = 300,bg = "white")

# Gráficos 3D: 
scores = as.data.frame(res2$x)
head(scores[1:4])

sum.res2=summary(res2)

plot3d(scores[,1:3],xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"), 
       size=5,
       col="black")

text3d(scores[,1:3],
       texts=c(rownames(scores)), 
       cex= 0.7, pos=3)

png("G2_EMG_3D_scatterplot_Neutral.png",units="in",width=6,height=5,res=600)
s3d <- scatterplot3d(scores[,1:3],  pch = 16,grid=TRUE, box=TRUE,main="3D Scatter Plot (G2 - EMG features - Neutral)", xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"))
text(s3d$xyz.convert(scores[, 1:3]), labels = rownames(scores),
     cex= 0.7, pos=3, col = "steelblue")
dev.off()


# -----------------------------------------------------------------------------
# G2 - EDA: 
# ACP sobre dados normalizados
res2=prcomp(dadosG2_EDA, center = TRUE, scale=TRUE)
res2
tabela=as.table(res2$rotation)
tabela

# Os individuos expressos nas novas CP's:
res2$x
tabela2=as.table(res2$x)
tabela2
tabela2 <- as.data.frame.matrix(tabela2)

# Summary:
summary(res2)
tabela3 = as.table(summary(res2)$importance)
tabela3 
tabela3 <- as.data.frame.matrix(tabela3)

# Transferir os dados da tabela para excel:
install.packages("openxlsx")
library("openxlsx")

wb <- createWorkbook()
addWorksheet(wb, "Loadings")
addWorksheet(wb, "Componentes principais")
addWorksheet(wb, "Summary")


writeData(wb, "Loadings", tabela, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Componentes principais", tabela2, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Summary", tabela3, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)


saveWorkbook(wb, file = "C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\features_neutral_excerpts\\resultados_pca_features_neutral_G2_EDA.xlsx", overwrite = TRUE)

# --------------------------------------------------------------------------------------------
b<-summary(res2)
loading=cor(res2$x,dados); round(loading,3)
loading=t(res2$rotation); round(loading,3)

# Obter a variável com maior loading para cada componente principal:
x=abs(loading); 
a=NULL
for (i in 1:(dim(dados)[2]))
{a[i]=colnames(x)[which.max(x[i,])]}
a=rbind(rownames(loading),a)  
a

# --------------------------------------------------------------------------------------------
get_eig(res2)

# Scree plot - PC's
p <- fviz_screeplot(res2, addlabels = TRUE, hjust = -0.3,  barfill="lightgray", barcolor ="black",linecolor ="red",  ylim = c(0, 60))
p + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10))+ labs(title = "Variances - PCA",x = "Principal Components", y = "% of variances")+ theme(plot.title = element_text(hjust = 0.5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EDA_Variances_PCA_Neutral.png",dpi = 300,bg = "white")

# PCA Variables graph
fviz_pca_var(res2, col.var="contrib", gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Variables - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EDA_Variables_PCA_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC1
#fviz_contrib(res2, choice = "var", axes = 1, top =50)
fviz_contrib(res2, choice="var", axes = 1, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EDA_Contributions_to_pc1_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC2
fviz_contrib(res2, choice="var", axes = 2, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EDA_Contributions_to_pc2_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC3
fviz_contrib(res2, choice="var", axes = 3, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC3") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EDA_Contributions_to_pc3_Neutral.png",dpi = 300,bg = "white")

# Extract the results for individuals
fviz_pca_ind(res2, col.ind = "cos2",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),repel = TRUE ) + labs(title = "Individuals - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EDA_Individuals_PCA_Neutral.png",dpi = 300,bg = "white")

# Biplot
fviz_pca_biplot(res2,col.var="contrib",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Biplot") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_EDA_Biplot_Neutral.png",dpi = 300,bg = "white")

# Highlight the most contributing variables for each dimension
library("corrplot")
var <- get_pca_var(res2)
corrplot(var$contrib, is.corr=FALSE) 
ggsave("G2_EDA_Contributions_Neutral.png",dpi = 300,bg = "white")

# Total contribution on PC1,PC2 and PC3:
fviz_contrib(res2, choice = "var", axes = 1:2, top =85, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1 and PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank()))
ggsave("G2_EDA_Contributions_to_pc1+pc2_Neutral.png",dpi = 300,bg = "white")

# Gráficos 3D: 
scores = as.data.frame(res2$x)
head(scores[1:4])

sum.res2=summary(res2)

plot3d(scores[,1:3],xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"), 
       size=5,
       col="black")

text3d(scores[,1:3],
       texts=c(rownames(scores)), 
       cex= 0.7, pos=3)

png("G2_EDA_3D_scatterplot_Neutral.png",units="in",width=6,height=5,res=600)
s3d <- scatterplot3d(scores[,1:3],  pch = 16,grid=TRUE, box=TRUE,main="3D Scatter Plot (G2 - EDA features - Neutral)", xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"))
text(s3d$xyz.convert(scores[, 1:3]), labels = rownames(scores),
     cex= 0.7, pos=3, col = "steelblue")
dev.off()

# ----------------------------------------------------------------------------------
# G2 - ECG: 
# ACP sobre dados normalizados
res2=prcomp(dadosG2_ECG, center = TRUE, scale=TRUE)
res2
tabela=as.table(res2$rotation)
tabela

# Os individuos expressos nas novas CP's:
res2$x
tabela2=as.table(res2$x)
tabela2
tabela2 <- as.data.frame.matrix(tabela2)

# Summary:
summary(res2)
tabela3 = as.table(summary(res2)$importance)
tabela3 
tabela3 <- as.data.frame.matrix(tabela3)

# Transferir os dados da tabela para excel:
install.packages("openxlsx")
library("openxlsx")

wb <- createWorkbook()
addWorksheet(wb, "Loadings")
addWorksheet(wb, "Componentes principais")
addWorksheet(wb, "Summary")


writeData(wb, "Loadings", tabela, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Componentes principais", tabela2, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Summary", tabela3, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)


saveWorkbook(wb, file = "C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\features_neutral_excerpts\\resultados_pca_features_neutral_G2_ECG.xlsx", overwrite = TRUE)

# --------------------------------------------------------------------------------------------
b<-summary(res2)
loading=cor(res2$x,dados); round(loading,3)
loading=t(res2$rotation); round(loading,3)

# Obter a variável com maior loading para cada componente principal:
x=abs(loading); 
a=NULL
for (i in 1:(dim(dados)[2]))
{a[i]=colnames(x)[which.max(x[i,])]}
a=rbind(rownames(loading),a)  
a

# --------------------------------------------------------------------------------------------
get_eig(res2)

# Scree plot - PC's
p <- fviz_screeplot(res2, addlabels = TRUE, hjust = -0.3,  barfill="lightgray", barcolor ="black",linecolor ="red",  ylim = c(0, 60))
p + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10))+ labs(title = "Variances - PCA",x = "Principal Components", y = "% of variances")+ theme(plot.title = element_text(hjust = 0.5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_ECG_Variances_PCA_Neutral.png",dpi = 300,bg = "white")

# PCA Variables graph
fviz_pca_var(res2, col.var="contrib", gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Variables - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_ECG_Variables_PCA_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC1
#fviz_contrib(res2, choice = "var", axes = 1, top =50)
fviz_contrib(res2, choice="var", axes = 1, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_ECG_Contributions_to_pc1_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC2
fviz_contrib(res2, choice="var", axes = 2, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_ECG_Contributions_to_pc2_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC3
fviz_contrib(res2, choice="var", axes = 3, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC3") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_ECG_Contributions_to_pc3_Neutral.png",dpi = 300,bg = "white")

# Extract the results for individuals
fviz_pca_ind(res2, col.ind = "cos2",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),repel = TRUE ) + labs(title = "Individuals - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_ECG_Individuals_PCA_Neutral.png",dpi = 300,bg = "white")

# Biplot
fviz_pca_biplot(res2,col.var="contrib",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Biplot") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G2_ECG_Biplot_Neutral.png",dpi = 300,bg = "white")

# Highlight the most contributing variables for each dimension
library("corrplot")
var <- get_pca_var(res2)
corrplot(var$contrib, is.corr=FALSE) 
ggsave("G2_ECG_Contributions_Neutral.png",dpi = 300,bg = "white")

# Total contribution on PC1,PC2 and PC3:
fviz_contrib(res2, choice = "var", axes = 1:2, top =85, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1 and PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank()))
ggsave("G2_ECG_Contributions_to_pc1+pc2_Neutral.png",dpi = 300,bg = "white")

# Gráficos 3D: 
scores = as.data.frame(res2$x)
head(scores[1:4])

sum.res2=summary(res2)

plot3d(scores[,1:3],xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"), 
       size=5,
       col="black")

text3d(scores[,1:3],
       texts=c(rownames(scores)), 
       cex= 0.7, pos=3)

png("G2_ECG_3D_scatterplot_Neutral.png",units="in",width=6,height=5,res=600)
s3d <- scatterplot3d(scores[,1:3],  pch = 16,grid=TRUE, box=TRUE,main="3D Scatter Plot (G2 - ECG features - Neutral)", xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"))
text(s3d$xyz.convert(scores[, 1:3]), labels = rownames(scores),
     cex= 0.7, pos=3, col = "steelblue")
dev.off()

# ----------------------------------------------------------------------------------
# G3 - EMG + EDA + ECG: 
# ACP sobre dados normalizados
res2=prcomp(dadosG3, center = TRUE, scale=TRUE)
res2
tabela=as.table(res2$rotation)
tabela

# Os individuos expressos nas novas CP's:
res2$x
tabela2=as.table(res2$x)
tabela2
tabela2 <- as.data.frame.matrix(tabela2)

# Summary:
summary(res2)
tabela3 = as.table(summary(res2)$importance)
tabela3 
tabela3 <- as.data.frame.matrix(tabela3)

# Transferir os dados da tabela para excel:
install.packages("openxlsx")
library("openxlsx")

wb <- createWorkbook()
addWorksheet(wb, "Loadings")
addWorksheet(wb, "Componentes principais")
addWorksheet(wb, "Summary")


writeData(wb, "Loadings", tabela, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Componentes principais", tabela2, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Summary", tabela3, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)


saveWorkbook(wb, file = "C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\features_neutral_excerpts\\resultados_pca_features_neutral_G3_EMG_EDA_ECG.xlsx", overwrite = TRUE)

# --------------------------------------------------------------------------------------------
b<-summary(res2)
loading=cor(res2$x,dados); round(loading,3)
loading=t(res2$rotation); round(loading,3)

# Obter a variável com maior loading para cada componente principal:
x=abs(loading); 
a=NULL
for (i in 1:(dim(dados)[2]))
{a[i]=colnames(x)[which.max(x[i,])]}
a=rbind(rownames(loading),a)  
a

# --------------------------------------------------------------------------------------------
get_eig(res2)

# Scree plot - PC's
p <- fviz_screeplot(res2, addlabels = TRUE, hjust = -0.3,  barfill="lightgray", barcolor ="black",linecolor ="red",  ylim = c(0, 30))
p + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10))+ labs(title = "Variances - PCA",x = "Principal Components", y = "% of variances")+ theme(plot.title = element_text(hjust = 0.5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EMG_EDA_ECG_Variances_PCA_Neutral.png",dpi = 300,bg = "white")

# PCA Variables graph
fviz_pca_var(res2, col.var="contrib", gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Variables - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EMG_EDA_ECG_Variables_PCA_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC1
#fviz_contrib(res2, choice = "var", axes = 1, top =50)
fviz_contrib(res2, choice="var", axes = 1, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EMG_EDA_ECG_Contributions_to_pc1_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC2
fviz_contrib(res2, choice="var", axes = 2, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EMG_EDA_ECG_Contributions_to_pc2_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC3
fviz_contrib(res2, choice="var", axes = 3, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC3") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size =5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EMG_EDA_ECG_Contributions_to_pc3_Neutral.png",dpi = 300,bg = "white")

# Extract the results for individuals
fviz_pca_ind(res2, col.ind = "cos2",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),repel = TRUE ) + labs(title = "Individuals - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EMG_EDA_ECG_Individuals_PCA_Neutral.png",dpi = 300,bg = "white")

# Biplot
fviz_pca_biplot(res2,col.var="contrib",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Biplot") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EMG_EDA_ECG_Biplot_Neutral.png",dpi = 300,bg = "white")


# Highlight the most contributing variables for each dimension
library("corrplot")
var <- get_pca_var(res2)
corrplot(var$contrib, is.corr=FALSE) 
ggsave("G3_EMG+EDA+ECG_Contributions_Neutral.png",dpi = 300,bg = "white")

# Total contribution on PC1,PC2 and PC3:
fviz_contrib(res2, choice = "var", axes = 1:2, top =85, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1 and PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank()))
ggsave("G3_EMG+EDA+ECG_Contributions_to_pc1+pc2_Neutral.png",dpi = 300,bg = "white")

# Gráficos 3D: 
scores = as.data.frame(res2$x)
head(scores[1:4])

sum.res2=summary(res2)

plot3d(scores[,1:3],xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"), 
       size=5,
       col="black")

text3d(scores[,1:3],
       texts=c(rownames(scores)), 
       cex= 0.7, pos=3)

png("G3_EMG_EDA_ECG_3D_scatterplot_Neutral.png",units="in",width=6,height=5,res=600)
s3d <- scatterplot3d(scores[,1:3],  pch = 16,grid=TRUE, box=TRUE,main="3D Scatter Plot (G3 - EMG+EDA+ECG features - Neutral)", xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"))
text(s3d$xyz.convert(scores[, 1:3]), labels = rownames(scores),
     cex= 0.7, pos=3, col = "steelblue")
dev.off()

# --------------------------------------------------------------------------------
# G3 - EMG: 
# ACP sobre dados normalizados
res2=prcomp(dadosG3_EMG, center = TRUE, scale=TRUE)
res2
tabela=as.table(res2$rotation)
tabela

# Os individuos expressos nas novas CP's:
res2$x
tabela2=as.table(res2$x)
tabela2
tabela2 <- as.data.frame.matrix(tabela2)

# Summary:
summary(res2)
tabela3 = as.table(summary(res2)$importance)
tabela3 
tabela3 <- as.data.frame.matrix(tabela3)

# Transferir os dados da tabela para excel:
install.packages("openxlsx")
library("openxlsx")

wb <- createWorkbook()
addWorksheet(wb, "Loadings")
addWorksheet(wb, "Componentes principais")
addWorksheet(wb, "Summary")


writeData(wb, "Loadings", tabela, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Componentes principais", tabela2, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Summary", tabela3, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)


saveWorkbook(wb, file = "C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\features_neutral_excerpts\\resultados_pca_features_neutral_G3_EMG.xlsx", overwrite = TRUE)

# --------------------------------------------------------------------------------------------
b<-summary(res2)
loading=cor(res2$x,dados); round(loading,3)
loading=t(res2$rotation); round(loading,3)

# Obter a variável com maior loading para cada componente principal:
x=abs(loading); 
a=NULL
for (i in 1:(dim(dados)[2]))
{a[i]=colnames(x)[which.max(x[i,])]}
a=rbind(rownames(loading),a)  
a

# --------------------------------------------------------------------------------------------
get_eig(res2)

# Scree plot - PC's
p <- fviz_screeplot(res2, addlabels = TRUE, hjust = -0.3,  barfill="lightgray", barcolor ="black",linecolor ="red",  ylim = c(0, 40))
p + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10))+ labs(title = "Variances - PCA",x = "Principal Components", y = "% of variances")+ theme(plot.title = element_text(hjust = 0.5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EMG_Variances_PCA_Neutral.png",dpi = 300,bg = "white")

# PCA Variables graph
fviz_pca_var(res2, col.var="contrib", gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Variables - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EMG_Variables_PCA_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC1
#fviz_contrib(res2, choice = "var", axes = 1, top =50)
fviz_contrib(res2, choice="var", axes = 1, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EMG_Contributions_to_pc1_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC2
fviz_contrib(res2, choice="var", axes = 2, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EMG_Contributions_to_pc2_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC3
fviz_contrib(res2, choice="var", axes = 3, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC3") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EMG_Contributions_to_pc3_Neutral.png",dpi = 300,bg = "white")

# Extract the results for individuals
fviz_pca_ind(res2, col.ind = "cos2",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),repel = TRUE ) + labs(title = "Individuals - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EMG_Individuals_PCA_Neutral.png",dpi = 300,bg = "white")

# Biplot
fviz_pca_biplot(res2,col.var="contrib",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Biplot") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EMG_Biplot_Neutral.png",dpi = 300,bg = "white")

# Highlight the most contributing variables for each dimension
library("corrplot")
var <- get_pca_var(res2)
corrplot(var$contrib, is.corr=FALSE) 
ggsave("G3_EMG_Contributions_Neutral.png",dpi = 300,bg = "white")

# Total contribution on PC1,PC2 and PC3:
fviz_contrib(res2, choice = "var", axes = 1:2, top =85, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1 and PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank()))
ggsave("G3_EMG_Contributions_to_pc1+pc2_Neutral.png",dpi = 300,bg = "white")


# Gráficos 3D: 
scores = as.data.frame(res2$x)
head(scores[1:4])

sum.res2=summary(res2)

plot3d(scores[,1:3],xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"), 
       size=5,
       col="black")

text3d(scores[,1:3],
       texts=c(rownames(scores)), 
       cex= 0.7, pos=3)

png("G3_EMG_3D_scatterplot_Neutral.png",units="in",width=6,height=5,res=600)
s3d <- scatterplot3d(scores[,1:3],  pch = 16,grid=TRUE, box=TRUE,main="3D Scatter Plot (G3 - EMG features - Neutral)", xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"))
text(s3d$xyz.convert(scores[, 1:3]), labels = rownames(scores),
     cex= 0.7, pos=3, col = "steelblue")
dev.off()


# -------------------------------------------------------------------------------
# G3 - EDA: 
# ACP sobre dados normalizados
res2=prcomp(dadosG3_EDA, center = TRUE, scale=TRUE)
res2
tabela=as.table(res2$rotation)
tabela

# Os individuos expressos nas novas CP's:
res2$x
tabela2=as.table(res2$x)
tabela2
tabela2 <- as.data.frame.matrix(tabela2)

# Summary:
summary(res2)
tabela3 = as.table(summary(res2)$importance)
tabela3 
tabela3 <- as.data.frame.matrix(tabela3)

# Transferir os dados da tabela para excel:
install.packages("openxlsx")
library("openxlsx")

wb <- createWorkbook()
addWorksheet(wb, "Loadings")
addWorksheet(wb, "Componentes principais")
addWorksheet(wb, "Summary")


writeData(wb, "Loadings", tabela, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Componentes principais", tabela2, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Summary", tabela3, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)


saveWorkbook(wb, file = "C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\features_neutral_excerpts\\resultados_pca_features_neutral_G3_EDA.xlsx", overwrite = TRUE)

# --------------------------------------------------------------------------------------------
b<-summary(res2)
loading=cor(res2$x,dados); round(loading,3)
loading=t(res2$rotation); round(loading,3)

# Obter a variável com maior loading para cada componente principal:
x=abs(loading); 
a=NULL
for (i in 1:(dim(dados)[2]))
{a[i]=colnames(x)[which.max(x[i,])]}
a=rbind(rownames(loading),a)  
a

# --------------------------------------------------------------------------------------------
get_eig(res2)

# Scree plot - PC's
p <- fviz_screeplot(res2, addlabels = TRUE, hjust = -0.3,  barfill="lightgray", barcolor ="black",linecolor ="red",  ylim = c(0, 40))
p + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10))+ labs(title = "Variances - PCA",x = "Principal Components", y = "% of variances")+ theme(plot.title = element_text(hjust = 0.5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EDA_Variances_PCA_Neutral.png",dpi = 300,bg = "white")

# PCA Variables graph
fviz_pca_var(res2, col.var="contrib", gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Variables - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EDA_Variables_PCA_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC1
#fviz_contrib(res2, choice = "var", axes = 1, top =50)
fviz_contrib(res2, choice="var", axes = 1, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EDA_Contributions_to_pc1_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC2
fviz_contrib(res2, choice="var", axes = 2, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EDA_Contributions_to_pc2_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC3
fviz_contrib(res2, choice="var", axes = 3, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC3") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EDA_Contributions_to_pc3_Neutral.png",dpi = 300,bg = "white")

# Extract the results for individuals
fviz_pca_ind(res2, col.ind = "cos2",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),repel = TRUE ) + labs(title = "Individuals - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EDA_Individuals_PCA_Neutral.png",dpi = 300,bg = "white")

# Biplot
fviz_pca_biplot(res2,col.var="contrib",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Biplot") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_EDA_Biplot_Neutral.png",dpi = 300,bg = "white")


# Highlight the most contributing variables for each dimension
library("corrplot")
var <- get_pca_var(res2)
corrplot(var$contrib, is.corr=FALSE) 
ggsave("G3_EDA_Contributions_Neutral.png",dpi = 300,bg = "white")

# Total contribution on PC1,PC2 and PC3:
fviz_contrib(res2, choice = "var", axes = 1:2, top =85, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1 and PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank()))
ggsave("G3_EDA_Contributions_to_pc1+pc2_Neutral.png",dpi = 300,bg = "white")

# Gráficos 3D: 
scores = as.data.frame(res2$x)
head(scores[1:4])

sum.res2=summary(res2)

plot3d(scores[,1:3],xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"), 
       size=5,
       col="black")

text3d(scores[,1:3],
       texts=c(rownames(scores)), 
       cex= 0.7, pos=3)

png("G3_EDA_3D_scatterplot_Neutral.png",units="in",width=6,height=5,res=600)
s3d <- scatterplot3d(scores[,1:3],  pch = 16,grid=TRUE, box=TRUE,main="3D Scatter Plot (G3 - EDA features - Neutral)", xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"))
text(s3d$xyz.convert(scores[, 1:3]), labels = rownames(scores),
     cex= 0.7, pos=3, col = "steelblue")
dev.off()
#

# -------------------------------------------------------------------------------
# G3 - ECG: 
# ACP sobre dados normalizados
res2=prcomp(dadosG3_ECG, center = TRUE, scale=TRUE)
res2
tabela=as.table(res2$rotation)
tabela

# Os individuos expressos nas novas CP's:
res2$x
tabela2=as.table(res2$x)
tabela2
tabela2 <- as.data.frame.matrix(tabela2)

# Summary:
summary(res2)
tabela3 = as.table(summary(res2)$importance)
tabela3 
tabela3 <- as.data.frame.matrix(tabela3)

# Transferir os dados da tabela para excel:
install.packages("openxlsx")
library("openxlsx")

wb <- createWorkbook()
addWorksheet(wb, "Loadings")
addWorksheet(wb, "Componentes principais")
addWorksheet(wb, "Summary")


writeData(wb, "Loadings", tabela, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Componentes principais", tabela2, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)
writeData(wb, "Summary", tabela3, colNames = TRUE, rowNames = TRUE, startRow = 1, startCol = 1)


saveWorkbook(wb, file = "C:\\Users\\tiago\\OneDrive\\Desktop\\Dissertação\\Análise Neutral\\features_neutral_excerpts\\resultados_pca_features_neutral_G3_ECG.xlsx", overwrite = TRUE)

# --------------------------------------------------------------------------------------------
b<-summary(res2)
loading=cor(res2$x,dados); round(loading,3)
loading=t(res2$rotation); round(loading,3)

# Obter a variável com maior loading para cada componente principal:
x=abs(loading); 
a=NULL
for (i in 1:(dim(dados)[2]))
{a[i]=colnames(x)[which.max(x[i,])]}
a=rbind(rownames(loading),a)  
a

# --------------------------------------------------------------------------------------------
get_eig(res2)

# Scree plot - PC's
p <- fviz_screeplot(res2, addlabels = TRUE, hjust = -0.3,  barfill="lightgray", barcolor ="black",linecolor ="red",  ylim = c(0, 40))
p + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10))+ labs(title = "Variances - PCA",x = "Principal Components", y = "% of variances")+ theme(plot.title = element_text(hjust = 0.5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_ECG_Variances_PCA_Neutral.png",dpi = 300,bg = "white")

# PCA Variables graph
fviz_pca_var(res2, col.var="contrib", gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Variables - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_ECG_Variables_PCA_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC1
#fviz_contrib(res2, choice = "var", axes = 1, top =50)
fviz_contrib(res2, choice="var", axes = 1, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_ECG_Contributions_to_pc1_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC2
fviz_contrib(res2, choice="var", axes = 2, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_ECG_Contributions_to_pc2_Neutral.png",dpi = 300,bg = "white")

# Contributions of variables to PC3
fviz_contrib(res2, choice="var", axes = 3, top=30, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC3") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 7)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_ECG_Contributions_to_pc3_Neutral.png",dpi = 300,bg = "white")

# Extract the results for individuals
fviz_pca_ind(res2, col.ind = "cos2",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),repel = TRUE ) + labs(title = "Individuals - PCA") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_ECG_Individuals_PCA_Neutral.png",dpi = 300,bg = "white")

# Biplot
fviz_pca_biplot(res2,col.var="contrib",gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE, labelsize = 2) + labs(title = "Biplot") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 10)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank())
ggsave("G3_ECG_Biplot_Neutral.png",dpi = 300,bg = "white")



# Highlight the most contributing variables for each dimension
library("corrplot")
var <- get_pca_var(res2)
corrplot(var$contrib, is.corr=FALSE) 
ggsave("G3_ECG_Contributions_Neutral.png",dpi = 300,bg = "white")

# Total contribution on PC1,PC2 and PC3:
fviz_contrib(res2, choice = "var", axes = 1:2, top =85, fill = "lightgray", color = "black")+ labs(title = "Contributions of variables to PC1 and PC2") + theme(plot.title = element_text(hjust = 0.5)) + theme(text = element_text(size = 13),axis.title = element_text(size = 13),axis.text = element_text(size = 5)) #+ theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank()))
ggsave("G3_ECG_Contributions_to_pc1+pc2_Neutral.png",dpi = 300,bg = "white")


# Gráficos 3D: 
scores = as.data.frame(res2$x)
head(scores[1:4])

sum.res2=summary(res2)

plot3d(scores[,1:3],xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"), 
       size=5,
       col="black")

text3d(scores[,1:3],
       texts=c(rownames(scores)), 
       cex= 0.7, pos=3)

png("G3_ECG_3D_scatterplot_Neutral.png",units="in",width=6,height=5,res=600)
s3d <- scatterplot3d(scores[,1:3],  pch = 16,grid=TRUE, box=TRUE,main="3D Scatter Plot (G3 - ECG features - Neutral)", xlab=paste(" CP1  (", (round(100*sum.res2$importance[2,1],digits=1)), " % )"), ylab=paste(" CP2  (", (round(100*sum.res2$importance[2,2],digits=1)), " % )"), zlab=paste(" CP3  (", (round(100*sum.res2$importance[2,3],digits=1)), " % )"))
text(s3d$xyz.convert(scores[, 1:3]), labels = rownames(scores),
     cex= 0.7, pos=3, col = "steelblue")
dev.off()

