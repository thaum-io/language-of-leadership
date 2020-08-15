##
# Language of Leadership
#
# @file
# @version 0.1

SHELL=/bin/bash
#: #-> GENERAL
help: #-> displays this help
	@echo "Ruler by Thaum"
	@echo "=============="
	@cat Makefile | grep -v "cat Makefile" | grep -E "^(.+):\s+#->"  | sed -E 's|^#:\s#->\s(.+)|\n\1|g' | sed -E 's|^#:(.+)|  \1|g'

reqs/git: #-> pulls / updates git submodules
	git submodule update --recursive --remote --init





# end
