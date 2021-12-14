

# Direct epub -> md conversion
direct:
	pandoc sicp.epub --defaults pandoc_defaults.yml --webtex -s -o docs/direct.md
