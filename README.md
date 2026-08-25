# Idris 2 Koans

Koans are small lessons learned by repairing deliberately incomplete code.
This edition targets **Idris 2 v0.8.0 or later**.

The unfinished lessons are in `Koans`. Replace each named hole, such as
`?fillme1`, with an expression that makes the lesson evaluate to `True`.
Complete, compiler-checked answers are kept separately in `Solutions`.

## Install Idris 2

Follow the upstream [Idris 2 installation instructions][install], then verify:

```sh
idris2 --version
```

## Work through the lessons

Attempt them in this order:

1. `Arithmetic`
2. `Equality`
3. `Boolean`
4. `Ranges`
5. `Lists`
6. `ListComprehensions`
7. `Tuples`
8. `HigherOrderFunctions`

Run one lesson from the repository root:

```sh
./bin/koan Arithmetic
```

The command shows Idris 2's hole information while work remains. Once no
named holes remain, it executes the lesson and succeeds only if every check is
`True`.

Run the maintained reference suite with:

```sh
make check
```

## What changed from the Idris 1 edition

- The compiler command is `idris2`.
- Source filenames now agree with their module names.
- Definitions moved out of the old Prelude are imported explicitly.
- Integer division uses `div`; the old `/` exercise had no integer solution.
- Two behaviorally impossible exercises were repaired.
- Every lesson now has an executable truth check.
- Reference solutions and continuous integration prevent the teaching files
  from silently becoming obsolete again.

The old lessons remain recognizable, but this is a compatibility port rather
than a frozen historical copy. New dependent-type and Idriç-specific lessons
can be added after this baseline.

[install]: https://github.com/idris-lang/Idris2/blob/main/INSTALL.md
