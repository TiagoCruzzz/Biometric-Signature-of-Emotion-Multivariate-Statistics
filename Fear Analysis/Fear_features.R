# Importing packages and libraries: 
install.packages("psych")
library(psych)
install.packages("cluster")
library(cluster)
install.packages("fpc")
library(fpc)
# Checking the data (Fear_features_S1_separated): 
# Fear_features_S1_separated contains the data associated with the features selected by methodology A and separated by physiological signal, obtained during the happy stimuli
print(Fear_features_S1_separated[1:29,0:3])
print(dim(Fear_features_S1_separated))
baseline_data = Fear_features_S1_separated[1:29,2:44]
print(dim(baseline_data))
print(baseline_data)
print(baseline_data[1:29,2])
sapply(baseline_data, class)
summary(baseline_data)
df = baseline_data

# Conversion of data to numeric:
df <- mapply(df, FUN=as.numeric)

# Standardization:
df2 = matrix(1,nrow=29,ncol=43)
for (j in 1:43)
  for (i in 1:29)
    df2[i,j]<-(as.numeric(df[i,j])-mean(df[1:29,j]))/sd(df[1:29,j])
end
end

print(mean(df[1:29,2]))
print(sd(df[1:29,2]))
print(df2)
print(df)


# Cluster analysis:

### Hierarchical method:
dendrogramadistancia=dist(df2, method="euclidian") 
hc = hclust(dendrogramadistancia, method="complete")  
plot(hc,hang=-1,main="Dendrogram (Baseline - Sessão 1) \nEuclidian Distance; Complete Linkage", col = "blue", xlab="Participants") #Agrupamento dos individuos 
cutree(hc, k=3)
rect.hclust(hc, k=3, border="red")
gr=cutree(hc, k=3) # 3 groups


### Testing the groups made (average silhouette mean):
D <- daisy(df)
plot(silhouette(gr,D), col=c("blue","purple"),main = "Silhouette plot")

# Non hierachical method - Kmeans: 
G2= kmeans(df2,3)
res=cluster.stats(dist(df2),clustering=G2$cluster)
resultadoIndices=matrix(c(res$avg.silwidth), byrow=TRUE,1)
colnames(resultadoIndices)<-"Avg. Silh"
round(resultadoIndices,3)
plot(silhouette(G2$cluster, D), col= c("blue", "purple"))
