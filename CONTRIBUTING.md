# Contributing to Idris 2 Koans

Keep commits self-contained and keep the first line of each commit message
under 73 characters.

For a lesson change:

1. Update the unfinished file in `Koans`.
2. Update its complete counterpart in `Solutions`.
3. Ensure the lesson's `allPass` value checks behavior rather than merely
   type-checking.
4. Run `make check` with the oldest supported Idris 2 release.

New lessons should have one main idea, useful named holes, an executable truth
check, and a reference solution. Avoid exercises whose requested result cannot
be produced by the operation being taught.

Submit changes from a focused branch through a pull request.
