# Importing packages and libraries: 
install.packages("psych")
library(psych)
library(nFactors) 
install.packages("cluster")
library(cluster)
install.packages("fpc")
library(fpc)

# Acessing and checking the data (Fear_s or Fear_s2 or Happy_s1 or Happy_s2 or Neutral_s1 or Neutral_s2), s1 = session 1 and s2 = session 2:
print(Fear_s1[1:5,1:5]) 
df = subset(Fear_s1, select = -c(X) )
print(df[1:5,1:5])
print(diag(var(df))) 

# Checking the fit of the FA to the data:

### Bartlett's test of sphericity:
cortest.bartlett(cor(df), n=nrow(df)) 

### KMO test:
print(KMO(df))

# Factor analysis using the principal component method: 

### For non-standard data:
rMatrix<-cov(df)
(pc<-principal(rMatrix, nfactors = 6,residuals = TRUE, rotate = "varimax", scores = TRUE,  covar=TRUE) )
factor.scores(x=df, f=pc$loadings, method="Bartlett")

### For standard data:
rMatrix<-cor(df)
(AF<-principal(rMatrix, nfactors = 6,residuals = TRUE, rotate = "varimax") )
loadingsAF=AF$loadings
loadingsAF
factor.scores(x=df, f=AF$loadings, method="Bartlett")

### Nº of factors to retain: 
parallelAnalysis<-nScree(rMatrix)
parallelAnalysis
par( cex.main=2, cex.lab = 1.5, cex.axis=1.3)
plotnScree(parallelAnalysis,ylab = "Eigenvalues", xlab = "Components", main = "Scree plot") # Visualmente escolhi nº de fatores = 6 


# Cluster analysis:
### Hierarchical method:
dendrogramadistancia=dist(df, method="euclidian") 
hc = hclust(dendrogramadistancia, method="complete")  
plot(hc,hang=-1,main="Dendrogram (VAS-POS (Fear_s1)) \nEuclidian Distance; Complete Linkage", col = "blue", xlab="Participants") #Agrupamento dos individuos 
cutree(hc, k=3)
rect.hclust(hc, k=3, border="red")
gr=cutree(hc, k=3)


# Test the grouping made:

### Internal Validation Measure (Average Silhouette Width):
D <- daisy(df)
plot(silhouette(gr,D), col=c("blue","purple","orange"), main = "Silhouette plot")


### Non-hierarchical method (K-means):
G2= kmeans(df,3)
res=cluster.stats(dist(df),clustering=G2$cluster)
resultadoIndices=matrix(c(res$avg.silwidth), byrow=TRUE,1)
colnames(resultadoIndices)<-"Avg. Silh"
round(resultadoIndices,3)
plot(silhouette(G2$cluster, D), col= c("blue", "purple","orange"))

