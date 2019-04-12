all: hll-graph.png hll-graph.svg legend.svg vendor/bundle css/syntax.css

%.png: %.dot
	dot -Tpng $< -o $@

%.svg: %.dot
	dot -Tsvg $< -o $@

vendor/bundle:
	bundle install --path vendor/bundle

serve:
	bundle exec jekyll serve

css/syntax.css:
	bundle exec rougify style monokai.sublime > $@
