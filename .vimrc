syntax enable
set background=dark
set number 
set title
set ambiwidth=double
set tabstop=4
set expandtab
set shiftwidth=4
set smartindent
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set nrformats-=octal
set hidden
set history=50
"set virtualedit=block
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set wildmenu

"Neo Bundle Setting
set nocompatible
filetype plugin indent off
set runtimepath+=~/.vim/bundle/neobundle.vim
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

"Bundles
" Color Schemes
"  solarized
NeoBundle 'altercation/vim-colors-solarized'
"  mustang
NeoBundle 'croaker/mustang-vim'
"  wombat
NeoBundle 'jeffreyiacono/vim-colors-wombat'
"  jellybeans
NeoBundle 'nanotech/jellybeans.vim'
"  lucius
NeoBundle 'vim-scripts/Lucius'
"  zenburn
NeoBundle 'vim-scripts/Zenburn'
"  mrkn256
NeoBundle 'mrkn/mrkn256.vim'
"  railscasts
NeoBundle 'jpo/vim-railscasts-theme'
"  pyte
NeoBundle 'therubymug/vim-pyte'
"  molokai
NeoBundle 'tomasr/molokai'

" Use Unite.vim when show index to Color Scheme 
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'

NeoBundle 'Shougo/neosnippet.vim'

filetype plugin indent on

call neobundle#end()

colorscheme railscasts
