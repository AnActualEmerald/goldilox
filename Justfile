build:
    grain compile src/main.gr -o goldilox.wasm

run *args='':
    grain src/main.gr {{args}}

test:
    grain src/main.gr test.lox

wasm *args='': build
    wasmtime --dir=. goldilox.wasm {{args}}