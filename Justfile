build:
    grain compile main.gr -o goldilox.wasm

run: build
    wasmer run goldilox.wasm
