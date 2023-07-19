# ```{=tex}
# \begin{tikzpicture}[node distance=5cm, auto,>=latex', thick, scale = 0.5]
#   \node{
# \begin{tabular}{@{}|l|c|c|c|c|c|c|c|c|c|c|c|c|@{}}
# \toprule
# \textbf{Percentil} & 10 & 20 & 25 & 35 & 45 & 50 & 60 & 70 & 75 & 85 & 95 & 100 \\ \midrule
# \textbf{Edad}      & `r p[1]` & `r p[2]` & `r p[3]` & `r p[4]` & `r p[5]` & `r p[6]` & `r p[7]` & `r p[8]` & `r p[9]` & `r p[10]` & `r p[11]` & `r p[12]` \\ \bottomrule
# \end{tabular}
#   };
# \end{tikzpicture}
# ```


```{=tex}
\begin{center}
  \pgfplotsset{compat=newest}
	\begin{tikzpicture}[		level 1/.style={sibling distance=7.5cm, level distance=1.5cm},		level 2/.style={sibling distance=2cm, level distance=1cm},		level 3/.style={sibling distance=3.5cm, level distance=1cm},		level 4/.style={sibling distance=2.5cm, level distance=1cm},		level 5/.style={sibling distance=2cm, level distance=1cm},		level 6/.style={sibling distance=1.5cm, level distance=1cm},		arestas/.style={rectangle,rounded corners=4pt,fill=orange!30,draw=black,font=\large},		berdex/.style={rectangle,rounded corners=3pt,fill=green!30,draw=black,font=\large}	]
	\node[berdex]{¿Están todos los elementos?}
	child{
		node{SÍ}
	    child{
	    	node{Permutación}
	        child{
	        	node[berdex]{¿Hay repetición?}
	            child{
	            	node{SÍ}
	                child{
				        node[arestas]{1}
				    }
	            }
	            child{
	            	node{NO}
	                child{
				        node[arestas]{2}
	                }
				        child{
				        node[berdex]{¿Circular?}
				            child{
				            node[arestas]{3}
				            }
	                }   
	            }
	        }
	    }
	}
	child{
		node{NO}
	    child{
	    	node[berdex]{¿Importa el orden?}
	        child{
	        	node{SÍ}
	            child{
	            	node{Variación}
	                child{
	                	node[berdex]{¿Repetición?}
	                    child{
	                    	node{SÍ}
	                        child{
						        node[arestas]{4}
						    }
	                    }
	                    child{
	                    	node{NO}
	                        child{
						        node[arestas]{5}
						    }
	                    }
	                }
	            }
	        }
	        child{
	        	node{NO}
	            child{
	            	node{Combinación}
	                child{
	                	node[berdex]{¿Repetición?}
	                    child{
	                    	node{SÍ}
	                        child{
						        node[arestas]{6}
						    }
	                    }
	                    child{
	                    	node{NO}
	                        child{
						        node[arestas]{7}
						    }
	                    }
	                }
	            }
	        }
	    }    
	};
	\end{tikzpicture}   
\end{center}
```