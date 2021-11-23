syntax on " コードに色をつける
set cursorline " カーソルラインを設定

augroup ColorschemeInit
	autocmd!
	" 背景の色設定をリセットする
	autocmd Colorscheme * highlight Normal ctermbg=none
	autocmd Colorscheme * highlight NonText ctermbg=none
	autocmd Colorscheme * highlight LineNr ctermbg=none
	autocmd Colorscheme * highlight SpecialKey ctermbg=none
	autocmd Colorscheme * highlight Folded ctermbg=none
	autocmd Colorscheme * highlight EndOfBuffer ctermbg=none

	autocmd Colorscheme * hi clear CursorLine " カーソルラインの下線を消去
augroup END


" === color schemes ===

" ** slate: 長く使っていた。ちょっと派手。
" colorscheme slate
" " slateの橙色が暗めだったので明るめに設定
" hi Constant ctermfg=208
" hi Special ctermfg=208
" hi ModeMsg ctermfg=208
" hi Function ctermfg=208
" " 行番号の表示設定（桃色:211）
" hi LineNr ctermfg=211


" ** jellybeans: returnとかの予約語が薄い。
colorscheme jellybeans
" 検索のハイライトがちょっと弱いので個別設定。
hi Search ctermfg=98 ctermbg=217


" ** hybrid: 少し薄いのと黄色っぽさがしっくりこない
" set background=dark
" colorscheme hybrid


" ** iceberg: pythonの文字列が同じ色で判別しづらい
" colorscheme iceberg


" ** onedark: ちょっとしっくりこない色系統
" colorscheme onedark
" === END ===


" 現在行のカーソル表示設定
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
