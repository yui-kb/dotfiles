"{{{ I DONT KNOW ----
set nocompatible
filetype on
" filetype plugin on
" filetype indent on

" syntax on

set number
set cursorline
set tabstop=4
set expandtab
set incsearch
set ignorecase
set smartcase
set history=1000
set mouse=nicr
set termguicolors
" }}}

" {{{ MAPPINGS ---


" }}}
highlight texMathMatcher ctermbg=none
highlight texMathZoneX ctermbg=none
highlight texRefLabel ctermbg=none
highlight texStatement ctermbg=none

if has('mouse_sgr')
    set ttymouse=sgr
endif

" {{{ VIMSCRIPT ----
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

augroup filetype_latex
    autocmd!
    autocmd FileType tex set foldmethod=expr
    autocmd FileType tex set foldtext=vimtex#fold#text()
    autocmd FileType tex set foldexpr=vimtex#fold#level(v:lnum)
augroup END
" }}}

:set number

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

" {{{ PLUGINS -----
call plug#begin()
Plug 'rust-lang/rust.vim'
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_mode=0
set conceallevel=2
let g:tex_conceal='abdmg'
Plug 'dylanaraps/fff.vim'
Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/c.vim'
Plug 'tpope/vim-surround'
Plug 'pchynoweth/a.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'itchyny/lightline.vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
call plug#end()
" }}}
set laststatus=2

let g:lightline = {'colorscheme': 'catppuccin_mocha'}

hi clear Conceal
