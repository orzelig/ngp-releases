# Nothing in this repository is built: releases are published from the Mac.
.PHONY: setup ci

# Nothing to fetch or install here; present so `make setup` succeeds. The ci
# workflow and hostd run `make setup` then `make ci` on every managed repo.
setup:
	@:

ci:
	@test -s README.md || { echo "README.md is missing or empty" >&2; exit 1; }
	@echo "ci: green"
