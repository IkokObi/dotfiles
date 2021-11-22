" 全角スペースの背景を白に変更
autocmd Colorscheme * highlight FullWidthSpace ctermbg=white
autocmd VimEnter * match FullWidthSpace /　/

" インサート時に行ハイライト
autocmd InsertEnter * highlight CursorLine ctermbg=17 
autocmd InsertLeave * hi clear CursorLine

" カラースキーム, 行番号の色等
syntax on " コードに色をつける
autocmd ColorScheme * highlight LineNr ctermfg=211
colorscheme slate
set background=dark
set cursorline " カーソルラインを表示
hi clear CursorLine " 下線を消去, ここと直上の2行はこの位置に
hi CursorLineNr term=bold cterm=bold ctermfg=0 ctermbg=15
hi Constant ctermfg=208
hi Special ctermfg=208
hi ModeMsg ctermfg=208
hi Function ctermfg=208
