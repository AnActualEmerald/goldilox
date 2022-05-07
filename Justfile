build:
    grain compile main.gr -o goldilox.wasm
    
run *args='':
    grain main.gr {{args}}
    
