
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Tomorrow syntax
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

" Indent Guide
Bundle "nathanaelkane/vim-indent-guides"

" YouCompleteMe
Bundle "Valloric/YouCompleteMe"

" API Blueprint Syntax
Bundle 'kylef/apiblueprint.vim'

" Swift syntax, indentation, etc.
Bundle 'toyamarinyon/vim-swift'

" Ctrlp - Fuzzy finder
Bundle 'kien/ctrlp.vim'

" Javascript
Bundle "pangloss/vim-javascript"
Bundle 'jelera/vim-javascript-syntax'

" JSX
Bundle "mxw/vim-jsx"

" Syntastic
Bundle "scrooloose/syntastic"
Bundle "maximeaubaret/syntastic-local-eslint.vim"

" NERDTree
Bundle "scrooloose/nerdtree"
Bundle "Xuyuanp/nerdtree-git-plugin"

" NERDCommenter
Bundle "scrooloose/nerdcommenter"

" Emmet
Bundle 'mattn/emmet-vim'

" Dash
Bundle 'rizzatti/dash.vim'

" Lightline
Bundle 'itchyny/lightline.vim'

" Fugitive (GIT)
Bundle 'tpope/vim-fugitive'

" Vim Gutter
Bundle 'airblade/vim-gitgutter'

" Spotify
Bundle 'takac/vim-spotifysearch'

" Jade Syntax highlighting
Bundle 'digitaltoad/vim-jade.git'

" Github Theme
Bundle 'endel/vim-github-colorscheme'

" Hybrid Theme
Bundle 'w0ng/vim-hybrid'

" Fish script
Bundle 'dag/vim-fish'

" ConqueTerm
Bundle 'vaibhav276/Conque-Shell'

" Node.vim
Bundle 'moll/vim-node'

" Spacegray
Bundle 'ajh17/Spacegray.vim'

" Solarized
Bundle 'altercation/vim-colors-solarized'

" Autoclose brackets
Bundle 'townk/vim-autoclose'

" Ident line
Bundle 'Yggdroot/indentLine'

" Remove trailing whitespace
Bundle 'ntpeters/vim-better-whitespace'

" Add TagBar
Bundle 'majutsushi/tagbar'

" Coffee
Plugin 'kchmck/vim-coffee-script'

" Add Zen mode"
Bundle 'bilalq/lite-dfm'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on

set shell=/bin/bash
set number

set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2
set nowrap

" Bind zen mode
nnoremap <C-z> :LiteDFMToggle<CR>

" Refresh CtrlP
nnoremap <C-c> :CtrlPClearAllCaches<CR>

" colorscheme tomorrow-night
colorscheme spacegray
" colorscheme github

" Syntastic defaults (from github repo)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Syntastic use JSXHint for JSX
let g:syntastic_javascript_checkers = ['eslint']

" Ctrlp
let g:ctrlp_map = '<D-O>'
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn)|node_modules)$'

" NERDTree shortcut
map <C-n>h :NERDTreeToggle<CR>


" Open Tagbar
nmap <C-n>j :TagbarToggle<CR>

" Dash
nmap <silent> <D-d> <Plug>DashSearch

" Always show lightline
set laststatus=2

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" Show current line
" set cursorline

" Bind Ctrl + Space to Omnicomplete
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

" Enable JSX syntax highlighting for all js files
let g:jsx_ext_required = 0

" Deactivate auto YCM
let g:ycm_auto_trigger = 0

" Remove trailing whitespace on save
autocmd BufWritePre * StripWhitespace

" Disable the bell
set noerrorbells
set novisualbell
set t_vb=
autocmd! GUIEnter * set vb t_vb=

