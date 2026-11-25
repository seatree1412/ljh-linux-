# Project A: Makefile and Static Library

This project demonstrates a static C library and Makefile version control.

## Initial Makefile

```bash
make
./main
```

The initial Makefile generates `lib/add.o`, `lib/sub.o`, `lib/libcal.a`,
and the executable `main`.

## Improved Makefile-v1

```bash
make -f Makefile-v1
./main-v1
```

`Makefile-v1` uses variables, automatic variables, and a pattern rule.
