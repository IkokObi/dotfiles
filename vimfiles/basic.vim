"===== 表示設定 =====
set number "行番号の表示
set title "編集中ファイル名の表示
set showmatch "括弧入力時に対応する括弧を示す
set matchtime=1 "カーソルが飛ぶ時間
"set colorcolumn=80 " 80文字の目印
set hidden " 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set visualbell "ビープ音を視覚表示
set laststatus=2 "ステータスを表示
set ruler "カーソル位置を表示
set ambiwidth=double  "全角記号を全角で表示
syntax on "コードに色をつける

"カラースキーム, 行番号の色等
autocmd ColorScheme * highlight LineNr ctermfg=211
colorscheme slate
set background=dark
set cursorline "カーソルラインを表示
hi clear CursorLine "下線を消去, ここと直上の2行はこの位置に
hi CursorLineNr term=bold cterm=bold ctermfg=0 ctermbg=15
hi Constant ctermfg=208 
hi Special ctermfg=208
hi ModeMsg ctermfg=208
hi Function ctermfg=208

"インサート時に行ハイライト
autocmd InsertEnter * highlight CursorLine ctermbg=233 
autocmd InsertLeave * hi clear CursorLine


"===== 文字、カーソル設定 =====
set fenc=utf-8 "文字コードを指定
set virtualedit=onemore "カーソルを行末の一つ先まで移動可能にする
set autoindent "自動インデント
set smartindent "オートインデント
set tabstop=4 "インデントをスペース4つ分に設定
set shiftwidth=4 "自動的に入力されたインデントの空白を4つ分に設定
set whichwrap=b,s,h,l,<,>,[,],~ "行頭、行末で行のカーソル移動を可能にする
set backspace=indent,eol,start "バックスペースでの行移動を可能にする
set wildmenu "コマンドモードの補完
set cmdheight=1 "メッセージ表示欄の行数
set foldmethod=indent
let &t_ti.="\e[1 q" "カーソル表示設定
let &t_SI.="\e[1 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
"表示行単位で移動
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk
"^, $のキーマッピング
noremap <Space>h  ^
noremap <Space>l  $
noremap <Space>p  %

"===== 検索設定 =====
set ignorecase "大文字、小文字の区別をしない
set smartcase "大文字が含まれている場合は区別する
set wrapscan "検索時に最後まで行ったら最初に戻る
set hlsearch "検索した文字を強調
set incsearch "インクリメンタルサーチを有効にする

"===== マウス設定 =====
set mouse=a "マウス操作を可能にする
set ttymouse=xterm2 "ドラッグを可能にする

"===== キー入力 =====
set clipboard=unnamed,autoselect "クリップボードへのコピー
"jキーを二度押しでESCキー
inoremap <silent> jj <Esc>
inoremap <silent> っj <Esc>

"{}の自動補完
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap \{ \{\}<Left><Left>

"===== その他 =====
set history=10000 "履歴を10000件保存
set pumheight=10 "変換候補で一度に表示される数


