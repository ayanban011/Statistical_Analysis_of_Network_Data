# Creating Network Graphs
## Undirected and Directed Graphs
library(igraph)
# For small, toy graphs, the function graph.formula can be used. For example,
g <- graph.formula(1-4, 1-2, 1-3, 2-5, 2-3, 2-4, 3-7, 3-5, 4-5, 4-6, 4-7, 5-6, 6-7)
# creates a graph object g with v = 7 vertices
V(g)
# and 10 edges
E(g)
# This same information, in a slightly more compressed format, is recovered easily using the relevant structure command.
str(g)
# A visual representation of this graph, generated simply through the command
plot(g)
## Direct graph has -+ convention in graph.formula rest of the things are same as undirected graph
dg <- graph.formula(1-+4, 1-+2, 1-+3, 2-+2, 2++3, 4++1, 4-+2, 3-+4)
plot(dg)
## directed graph with vertex names
dg1 <- graph.formula(Sam-+Mary, Sam-+Tom, Mary++Tom)
str(dg)
# Alternatively, vertex labels can be changed from the default after initially creating the graph, by modifying the name vertex attribute of the graph object.
V(dg)$name <- c("Sam", "Mary", "Tom")