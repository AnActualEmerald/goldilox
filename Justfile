build:
#this is using the bad and slow JS version for now because the native build seems pretty broken
    grain compile main.gr -o goldilox.wasm

run: build
    wasmer run goldilox.wasm
