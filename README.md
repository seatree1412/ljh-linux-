# C Language Dynamic Library Project

This project demonstrates how to build and use a shared C library.

## Directory structure

```text
project/
├── include/
│   ├── add.h
│   └── sub.h
├── src/
│   ├── add.c
│   └── sub.c
├── lib/
│   └── libcal.so
├── test.c
└── test
```

## Build

```bash
gcc -shared -fPIC -Iinclude src/add.c src/sub.c -o lib/libcal.so
gcc -Iinclude test.c -Llib -lcal -Wl,-rpath,'$ORIGIN/lib' -o test
```

## Run

```bash
./test
```

Expected output:

```text
20 + 8 = 28
20 - 8 = 12
```
