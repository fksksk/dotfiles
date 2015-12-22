""""""""""""""""""""""""""""""
" 各種オプションの設定
""""""""""""""""""""""""""""""
" vi互換ではなく，vimのデフォルト設定にする
set nocompatible
" 構文毎に文字色を変化
syntax on
" カーソルを行頭・行末で止めない
set whichwrap=b,s,h,l,<,>,[,]
" 入力中のコマンド表示
set showcmd
" カーソル位置の行・列表示
set ruler
" コマンドラインに使われる画面上の行数
set cmdheight=4
" 暗い背景色に合わせた配色にする
set background=dark
" 行番号を表示
set number
" 検索ワードの最初の文字を入力した時点で検索を開始する
set incsearch
"ターミナル接続を高速にする
set ttyfast

set title
set ambiwidth=double
set tabstop=4
" タブ文字ではなく半角スペース
"set expandtab
set shiftwidth=4

" 自動インデントを有効化
set smartindent
set autoindent
"括弧の対応をハイライト
set showmatch
"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab


" ステータスラインにコマンドを表示
set showcmd
" ステータスラインを常に表示
set laststatus=2
" ファイルナンバー表示
set statusline=[%n]
" ホスト名表示
set statusline+=%{matchstr(hostname(),'\\w\\+')}@
" ファイル名表示
set statusline+=%<%F
" 変更のチェック表示
set statusline+=%m
" 読み込み専用かどうか表示
set statusline+=%r
" ヘルプページなら[HELP]と表示
set statusline+=%h
" プレビューウインドウなら[Prevew]と表示
set statusline+=%w
" ファイルフォーマット表示
set statusline+=[%{&fileformat}]
" 文字コード表示
set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]
" ファイルタイプ表示
set statusline+=%y
" ここからツールバー右側
set statusline+=%=
" skk.vimの状態
set statusline+=%{exists('*SkkGetModeStr')?SkkGetModeStr():''}
" 文字バイト数/カラム番号
set statusline+=[%{col('.')-1}=ASCII=%B,HEX=%c]
" 現在文字列/全体列表示
"set statusline+=[C=%c/%{col('$')-1}]
" 現在文字行/全体行表示
set statusline+=[L=%l/%L]
" 現在行が全体行の何%目か表示
set statusline+=[%p%%]

set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set nrformats-=octal
" 複数ファイルの編集が可能
set hidden
"カッコを閉じたとき対応するカッコに一時的に移動
set nostartofline
"コマンドラインでTABで補完できるようにする
set wildchar=<C-Z>
"コマンド/検索パターンを50まで保存
set history=50
set virtualedit=block
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
" コマンドラインモードで<Tab>キーによるファイル名補完
set wildmenu

set pastetoggle=<C-E>
" 行番号の色
highlight LineNr ctermfg=darkyellow

let g:solarized_termcolors=256

filetype plugin indent off











""""""""""""""""""""""""""""""""
" NeoBundle set up
""""""""""""""""""""""""""""""""
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#begin(expand('~/.vim/bundle'))
endif
" Bundles
""NeoBundle自体をNeoBundleで管理"
NeoBundleFetch 'Shougo/neobundle.vim'
""カラースキーマ
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
NeoBundle 'altercation/vim-colors-solarized'
""Unite.vim 導入
NeoBundle 'Shougo/unite.vim'
""Unite.vimで最近使ったファイルを表示できるように
NeoBundle 'Shougo/neomru.vim'
""neocomplcache.vim導入（入力補完）
NeoBundle 'Shougo/neocomplcache'
" Dsable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
     \ 'default' : ''
         \ }
" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()


" NERDTree 導入
NeoBundle 'scrooloose/nerdtree'

NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
" html/CSS入力補助プラグイン
NeoBundle 'mattn/emmet-vim'
" vimのテキストオブジェクトを拡張するプラグイン
NeoBundle 'tpope/vim-surround'

" URLを開いたり、ググったり出来る
NeoBundle 'tyru/open-browser.vim'
"NeoBundle 'mattn/webapi-vim'

" ブラウザを自動更新するプラグイン(Mac Only)
NeoBundle 'tell-k/vim-browsereload-mac'
" html5のコードをシンタックス表示する
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'taichouchou2/html5.vim'
" vimにjsのシンタックスを追加する
NeoBundle 'jelera/vim-javascript-syntax'
" coffee scriptのサポート
NeoBundle 'kchmck/vim-coffee-script'
" HTML5の文法チェック
NeoBundle 'hokaccha/vim-html5validator'
" インデントに色を付けて見やすくする
NeoBundle 'nathanaelkane/vim-indent-guides'
" Vimの中でGitのコマンドを実行
NeoBundle 'tpope/vim-fugitive'
" インデントに色
NeoBundle 'nathanaelkane/vim-indent-guides'
" 行末の空白に色
NeoBundle 'bronson/vim-trailing-whitespace'

filetype plugin indent on
call neobundle#end()
colorscheme railscasts
NeoBundleCheck
""""""""""""""""""""""""""""""""

"if has('vim_starting')
