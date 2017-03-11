
syntax off
set number
set relativenumber
set tabstop=4
set shiftwidth=4

set nobackup
set noswapfile
let loaded_matchparen = 1

let mapleader = "\<Space>"

nnoremap <Leader>w :w<CR>

autocmd BufWritePre * %s/\s\+$//e
