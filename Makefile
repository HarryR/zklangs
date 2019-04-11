all: hll-graph.png hll-graph.svg vendor/bundle css/syntax.css

hll-graph.png: hll-graph.dot
	dot -Tpng $< -o $@

hll-graph.svg: hll-graph.dot
	dot -Tsvg $< -o $@

vendor/bundle:
	bundle install --path vendor/bundle

serve:
	bundle exec jekyll serve

css/syntax.css:
	bundle exec rougify style monokai.sublime > $@
