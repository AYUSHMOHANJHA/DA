library(igraph)
#create a graph and plot 
g<-graph(c(1,2,2,3,3,4,4,1),directed=F,n=7)

#can also create using names
g<-graph(c("A","B","B","C","C","D","D","A","A","E"),directed=F)
plot(g,vertex.color="green",vertex.size=25,edge.color='red')

#display as a matrix
g[]

#create a graph and plot 
ng<-graph(c(1,2,2,3,3,1),directed=F)
plot(ng,vertex.color="green",vertex.size=25,edge.color='red')


#Network Measure - displaying the degree of the graph
degree(g, mode='all')
degree(g,mode='in')
degree(g,mode='out')

closeness(g,mode='all',weights=NA)
betweenness(g,directed=F,weights=NA)
betweenness()
edge.betweenness(g,directed=T,weights=NA)

#cliques
cliques(g,min=NULL,max=NULL)
clique.number(g)
clique_num(g)

#transitivity
transitivity(ng)

#components

components(ng, mode = c("weak", "strong"))
#alternate command to find the maximal connected component
clusters(ng, mode=c("weak", "strong"))
plot(ng)

#neighborhood
neighborhood.size(ng)

cohesive.blocks(ng)
