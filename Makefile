IDRIS2 ?= idris2
IDRIS2_CODEGEN ?= chez

STARTERS := \
	Koans/Arithmetic.idr \
	Koans/Equality.idr \
	Koans/Boolean.idr \
	Koans/Ranges.idr \
	Koans/Lists.idr \
	Koans/ListComprehensions.idr \
	Koans/Tuples.idr \
	Koans/HigherOrderFunctions.idr \
	Koans/Misc.idr

SOLUTIONS := \
	Solutions/Arithmetic.idr \
	Solutions/Equality.idr \
	Solutions/Boolean.idr \
	Solutions/Ranges.idr \
	Solutions/Lists.idr \
	Solutions/ListComprehensions.idr \
	Solutions/Tuples.idr \
	Solutions/HigherOrderFunctions.idr \
	Solutions/Misc.idr \
	Solutions/Main.idr

.PHONY: check check-starters check-solutions clean

check: check-starters check-solutions

check-starters:
	@set -eu; \
	for source in $(STARTERS); do \
		printf 'checking starter %s\n' "$$source"; \
		$(IDRIS2) --check "$$source" >/dev/null; \
	done

check-solutions:
	@set -eu; \
	for source in $(SOLUTIONS); do \
		printf 'checking solution %s\n' "$$source"; \
		$(IDRIS2) --check "$$source" >/dev/null; \
	done; \
	result=$$($(IDRIS2) --quiet --cg $(IDRIS2_CODEGEN) --exec main Solutions/Main.idr); \
	printf '%s\n' "$$result"; \
	test "$$result" = 'All Idris 2 koan solutions pass.'

clean:
	rm -rf build
