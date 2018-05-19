
syntax off
set number
set relativenumber
set tabstop=2
set shiftwidth=2
set autoindent
set nowrap
set expandtab

set nowritebackup
set nobackup
set noswapfile
let loaded_matchparen = 1
let g:saveCount = 0

imap <c-s> <esc>:w<cr>:let g:saveCount = saveCount + 1<cr>:echo 'Saved ' . saveCount . ' Times'<cr>l:sleep 100m
nmap <c-s> :w<cr>:let g:saveCount = saveCount + 1<cr>:echo 'Saved ' . saveCount . ' Times'<cr>

imap <c-u> <Esc>gT<cr>
imap <c-o> <Esc>gt<cr>
nmap <c-u> gT<cr>
nmap <c-o> gt<cr>

imap <c-l> <Esc>A
imap <c-h> <Esc>I
imap <c-j> <Esc>j
imap <c-k> <Esc>k

" Remove trailing white space
autocmd BufWritePre * %s/\s\+$//e

let mapleader = "\<Space>"

nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>p :FZF<CR>
nmap <leader>2 :set shiftwidth=2<CR>
nmap <leader>4 :set shiftwidth=4<CR>
nmap <leader>m :set nopaste<CR>
nmap <leader>h :noh<CR>
nmap <leader>r :so $MYVIMRC

call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
