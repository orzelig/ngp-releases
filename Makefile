# Nothing in this repository is built: releases are published from the Mac.
.PHONY: ci
ci:
	@test -s README.md || { echo "README.md is missing or empty" >&2; exit 1; }
	@echo "ci: green"
