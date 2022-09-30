run *args='':
    grain src/main.gr {{args}}

build:
    grain compile --release src/main.gr -o goldilox.wasm
    
wat:
    grain compile --release --wat src/main.gr -o goldilox.wasm

web:
    grain compile --release --wat  src/index.gr -o goldilox.net.wasm

test:
    grain src/main.gr test.lox
    
fmt:
    grain format -o src/ src/

wasm *args='': build
    wasmtime --dir=. goldilox.wasm {{args}}