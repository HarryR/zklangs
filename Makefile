all: hll-graph.png

hll-graph.png: hll-graph.dot
	dot -Tpng $< -o $@
