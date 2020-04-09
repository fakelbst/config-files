set nu
set ts=2
set sw=2
set sts=2
set expandtab
set ignorecase

call plug#begin('~/.vim/plugged')
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'leafgarland/typescript-vim'
Plug 'dart-lang/dart-vim-plugin'

Plug 'vim-airline/vim-airline'
" Themes
Plug 'chriskempson/tomorrow-theme', { 'rtp': 'vim' }
Plug 'drewtempelmeyer/palenight.vim'

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive' " git tool
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/AutoComplPop'

Plug 'majutsushi/tagbar'
call plug#end()

set termguicolors
set background = "dark"
syntax on
colorscheme palenight

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

:nnoremap <F8> :exe 'NERDTreeToggle'<CR>
let g:lightline = { 'colorscheme': 'palenight' }
let g:airline_theme = "palenight"

let g:ctrlp_map = '<c-p>' 
let g:ctrlp_cmd = 'CtrlP'

" For tagbar
let g:tagbar_type_javascript = {
      \ 'ctagstype': 'javascript',
      \ 'kinds': [
      \ 'A:arrays',
      \ 'P:properties',
      \ 'T:tags',
      \ 'O:objects',
      \ 'G:generator functions',
      \ 'F:functions',
      \ 'C:constructors/classes',
      \ 'M:methods',
      \ 'V:variables',
      \ 'I:imports',
      \ 'E:exports',
      \ 'S:styled components'
      \ ]}

let g:tagbar_type_typescript = {
  \ 'ctagsbin' : 'tstags',
  \ 'ctagsargs' : '-f-',
  \ 'kinds': [
    \ 'e:enums:0:1',
    \ 'f:function:0:1',
    \ 't:typealias:0:1',
    \ 'M:Module:0:1',
    \ 'I:import:0:1',
    \ 'i:interface:0:1',
    \ 'C:class:0:1',
    \ 'm:method:0:1',
    \ 'p:property:0:1',
    \ 'v:variable:0:1',
    \ 'c:const:0:1',
  \ ],
  \ 'sort' : 0
\ }

au BufNewFile,BufRead *.tsx set filetype=typescript
