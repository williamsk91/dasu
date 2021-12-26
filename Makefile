

# Direct epub -> md conversion
direct:
	pandoc sicp.epub --defaults pandoc_defaults.yml --webtex -s -o docs/direct.md

sample:
	pandoc sicp/html/1_002e3.xhtml --defaults pandoc_defaults.yml --webtex -s -o docs/sample/chapter-1/1-3.md
