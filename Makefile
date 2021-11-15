unzip:
	@if [ ! -d sicp ]; then unzip sicp.epub -d sicp; fi;
	
sicp-dir:
	@if [ ! -d docs/sicp ]; then mkdir docs/sicp; fi;

# epub -> unzip -> sicp-chapters
sicp-chapters: unzip sicp-dir
	for ch in sicp/html/*.xhtml; do \
		pandoc $$ch -t gfm-raw_html --lua-filter=luaFilters/meta.lua -s -o docs/sicp/$$(basename $$ch .xhtml).md; \
	done

toc:
	pandoc sicp.epub -t gfm-raw_html --toc -s -o docs/toc.md

toc-unzip:
	pandoc sicp/toc.xhtml -t gfm-raw_html -o docs/toc-unzip.md

# Direct epub -> md conversion
sicp-all:
	# pandoc sicp.epub --epub-chapter-level=1 --extract-media=docs -t gfm-raw_html -s -o docs/direct.md
	pandoc sicp.epub --extract-media=docs -t gfm-raw_html -s -o docs/direct.md

test-filter:
	pandoc sicp/html/index.xhtml  --defaults pandoc_defaults.yml -M sidebar_position="5" -s -o docs/sicp/index.filter.md;
