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
" Plug 'ianks/vim-tsx'
Plug 'peitalin/vim-jsx-typescript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'Quramy/tsuquyomi'
Plug 'dart-lang/dart-vim-plugin'
" Plug 'github/copilot.vim'
Plug 'ziglang/zig.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'vim-airline/vim-airline'
" Themes
Plug 'chriskempson/tomorrow-theme', { 'rtp': 'vim' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'drewtempelmeyer/palenight.vim'

Plug 'mattn/emmet-vim'
Plug 'groenewege/vim-less'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive' " git tool
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/AutoComplPop'
Plug 'rust-lang/rust.vim'

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'typescriptreact', 'javascriptreact', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'majutsushi/tagbar'
Plug 'Exafunction/codeium.vim'
Plug 'posva/vim-vue'
Plug 'evanleck/vim-svelte'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}

call plug#end()

set mouse=
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
let g:prettier#autoformat_config_files = ['~/.prettierrc.js']

let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

let g:coc_user_config = {
	\ 'suggest.autoTrigger': {
      \ 'suggest.autoTrigger': 'none'
	\ }
\ }

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

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> gs :sp<CR><Plug>(coc-definition)
nmap <silent> gv :vsp<CR><Plug>(coc-definition)

" autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
autocmd VimEnter * NERDTree

:nnoremap <F8> :exe 'NERDTreeToggle'<CR>
:nnoremap <F7> :exe 'TagbarOpen'<CR>

autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js,*.css,*.less,*.scss,*.vue PrettierAsync
