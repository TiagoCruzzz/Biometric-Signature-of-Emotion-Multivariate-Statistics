# Methodology B: 

# Importing packages and libraries: 
install.packages("psych")
library(psych)

# Checking the data (Baseline_S1_EDA_B or Baseline_S1_ECG_B or Baseline_S1_EMG_B or Baseline_S1_features_B or Baseline_S2_EDA_B or Baseline_S2_ECG_B or Baseline_S2_EMG_B or Baseline_S2_features_B): 
# Baseline_S1_EDA_B contains data from EDA signal (features selected based on methodologu B)
# Baseline_S1_ECG_B contains data from ECG signal (features selected based on methodologu B)
# Baseline_S1_EMG_B contains data from EMG signal (features selected based on methodologu B)
#Baseline_S1_features_B contains data from all physiolgical signals (features selected based on methodologu B)
print(Baseline_S1_EDA_B[1:29,0:3])
print(dim(Baseline_S1_EDA_B))
baseline_data = Baseline_S1_EDA_B[1:29,2:86]
print(dim(baseline_data))
print(baseline_data)
print(baseline_data[1:29,2])
sapply(baseline_data, class)
summary(baseline_data)
df = baseline_data

# Conversion of data to numeric:
df <- mapply(df, FUN=as.numeric)

# Standardization:
df2 = matrix(1,nrow=29,ncol=85)
for (j in 1:85)
  for (i in 1:29)
    df2[i,j]<-(as.numeric(df[i,j])-mean(df[1:29,j]))/sd(df[1:29,j])
end
end

print(mean(df[1:29,2]))
print(sd(df[1:29,2]))
print(df2)

# Cluster analysis:

### Hierarchical methods: 
dendrogramadistancia=dist(df2, method="euclidian") # Medida de aproximação, neste caso é usada a distância euclidiana 
hc = hclust(dendrogramadistancia, method="complete")  # Method = "complete" usa o criterio de agregação do vizinho mais afastado (complete linkage)
plot(hc,hang=-1,main="Dendrogram (Baseline - Sessão 1) \nEuclidian Distance; Complete Linkage", col = "blue", xlab="Participants") #Agrupamento dos individuos 
cutree(hc, k=3)
rect.hclust(hc, k=3, border="red")
gr=cutree(hc, k=3) # 3 grupos
print(gr)
gr2=cutree(hc, k=2) # 2 grupos
print(gr2)

### Testing the group made (Average silhuette mean):
install.packages("cluster")
library(cluster)
install.packages("fpc")
library(fpc)
D <- daisy(df)
plot(silhouette(gr,D), col=c("blue","purple"),main = "Silhouette plot")


### Non hierarchical method (K-means): 
G2= kmeans(df2,3)
res=cluster.stats(dist(df2),clustering=G2$cluster)
resultadoIndices=matrix(c(res$avg.silwidth), byrow=TRUE,1)
colnames(resultadoIndices)<-"Avg. Silh"
round(resultadoIndices,3)
plot(silhouette(G2$cluster, D), col= c("blue", "purple"))
