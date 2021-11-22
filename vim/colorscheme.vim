" カラースキーム
syntax on " コードに色をつける
colorscheme slate

" slateの橙色が暗めだったので明るめに設定
hi Constant ctermfg=208
hi Special ctermfg=208
hi ModeMsg ctermfg=208
hi Function ctermfg=208

" 行番号関連の表示設定をカスタマイズ
"   - 行番号は桃色
"   - 現在行のみ色を反転した感じ
set cursorline " カーソルラインを設定
hi clear CursorLine " 下線を消去
" 行番号の表示設定
hi LineNr ctermfg=211
" カーソル行の表示設定
hi CursorLineNr term=bold cterm=bold ctermfg=0 ctermbg=15

" インサート時に行ハイライト（set cursorlineが必要）
autocmd InsertEnter * highlight CursorLine ctermbg=17
autocmd InsertLeave * hi clear CursorLine

" 全角スペースを白で強調表示
" ref. https://qiita.com/okateim/items/bc48d9b178e955eb12cb
"     autocmd Colorscheme * highlight 系は colorscheme を設定する前に記述する
" autocmd Colorscheme * highlight FullWidthSpace ctermbg=white
" autocmd VimEnter * match FullWidthSpace /　/
" Colorscheme設定の後に記述して様子を見る
hi FullWidthSpace ctermbg=white
match FullWidthSpace /　/
