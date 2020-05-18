syntax on
colorscheme solarized8

set t_Co=256
set number
set ruler
set tabstop=4
set expandtab
set shiftwidth=4
set backspace=2
set smartindent
set autoindent
set nocompatible
filetype plugin on
filetype plugin indent on

" Setup clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

" Install and open NERDTree by default
execute pathogen#infect()
call pathogen#helptags()

" Toggle NERDTree on vim and tab enter
autocmd VimEnter * nmap ' :NERDTreeToggle<CR>

let NERDTreeQuitOnOpen=1
let NERDTreeWinSize=35

" Move lines with Shift+up/down
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" Go commands
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

