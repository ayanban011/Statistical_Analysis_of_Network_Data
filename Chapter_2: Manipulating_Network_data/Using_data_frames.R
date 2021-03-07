# Using data frames
library(sand)
g.lazega <- graph.data.frame(elist.lazega,directed="FALSE",vertices=v.attr.lazega)
g.lazega$name <- "Lazega Lawyers"
# Our full set of network information on these
vcount(g.lazega)
# lawyers now consists of the
ecount(g.lazega)
# pairs that declared they work together, along with the eight vertex attributes
list.vertex.attributes(g.lazega)
# check the graph is simple or not
is.simple(g.lazega)
# making a multigraph
mg <- g.lazega + edge('V1','V17')
str(mg)
is.simple(mg)
# converting our toy multi-graph mg to a weighted graph results in a simple graph
E(mg)$weight <- 1
wg2 <- simplify(mg)
is.simple(wg2)
# the edges which match our initial toy graph g
str(wg2)
# but for which the one edge has a weight of 2.
E(wg2)$weight
# the neighbors of vertex 5 in our lawyers graph g are
neighbors(g.lazega, 5)
# degree of the graph
degree(g.lazega)
# in digraph, there will be two mode in and out
degree(g.lazega, mode="in")
degree(g.lazega, mode="out")
# conclusion: for undirected graph,  degree==degree_in==degree_out
## Check graph connectivity
is.connected(g.lazega)
# Component graph
clusters(g.lazega)
# for digraph there will be two type on connection strong and weak
dg1 <- graph.formula(Sam-+Mary, Sam-+Tom, Mary++Tom)
is.connected(dg1, mode="weak")
is.connected(dg1, mode="strong")
# diameter of the graph
diameter(g.lazega, weights=NA)
