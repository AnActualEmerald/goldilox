run *args='':
    grain src/main.gr {{args}}

build:
    grain compile src/main.gr -o goldilox.wasm

test:
    grain src/main.gr test.lox
    
fmt:
    grain format -o src/ src/

wasm *args='': build
    wasmtime --dir=. goldilox.wasm {{args}}