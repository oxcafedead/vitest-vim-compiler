# vitest-vim-compiler

This is a simple implementation of vim compiler for [Vitest](https://vitest.dev/) tests.\
A convenient way to use it is via [vim-test](https://github.com/vim-test/vim-test) plugin with [vim-dispatch](https://github.com/tpope/vim-dispatch) strategy.

Example of vimrc:
```vim
let test#strategy = "dispatch"

let g:dispatch_compilers = {
            \ 'vitest': 'node_modules/.bin/vitest',
```
