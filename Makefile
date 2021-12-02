unzip:
	@if [ ! -d sicp ]; then unzip sicp.epub -d sicp; fi;
	
sicp-dir:
	@if [ ! -d docs/sicp ]; then mkdir docs/sicp; fi;

# epub -> unzip -> sicp-chapters
sicp-chapters: unzip sicp-dir
	for ch in sicp/html/*.xhtml; do \
		pandoc $$ch -t gfm-raw_html --lua-filter=luaFilters/meta.lua -s -o docs/sicp/$$(basename $$ch .xhtml).md; \
	done

toc-md:
	pandoc sicp/toc.xhtml --defaults pandoc_defaults.yml -o docs/toc.md

toc-json: toc-md
	pandoc docs/toc.md -t writer/toc-json.lua -o docs/toc.json

toc-chapters:
	ts-node utils/pandoc_json_to_plain_json.ts docs/toc.json


# Direct epub -> md conversion
sicp-direct:
	pandoc sicp.epub -t html5 -s -o direct.html
	# pandoc direct.md -t epub3 --epub-chapter-level=4 -s -o direct.epub

test-filter:
	pandoc sicp/html/index.xhtml --defaults pandoc_defaults.yml -M sidebar_position="5" -s -o docs/sicp/index.filter.md;
