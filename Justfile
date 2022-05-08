build:
    grain compile main.gr -o goldilox.wasm

run *args='':
    grain main.gr {{args}}

test:
    grain main.gr test.lox

wasm *args='': build
    wasmtime --dir=. goldilox.wasm {{args}}
