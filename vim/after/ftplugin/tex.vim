" Basic settings
setlocal spell
setlocal spelllang=en,cjk
setlocal softtabstop=2
setlocal tabstop=2
setlocal shiftwidth=2
let g:tex_comment_nospell=1
let g:tex_conceal=''

" 移動に時間がかかるのでcursorlineをoffにする
" autocmd BufRead,BufNewFile *.tex set nocursorline
" autocmd InsertEnter * set cursorline
" autocmd InsertEnter * hi clear CursorLine
" autocmd InsertEnter * highlight CursorLine ctermbg=233 
" autocmd InsertLeave * set nocursorline

" 保存時にコンパイル
" silentだとどうもreferenceが上手くいかなかった(-> vimtex側で<Leader>llを使う)
" === コマンドの説明 ===
" %:t ファイル名（拡張子付き）
" %:p ファイルのフルパス
" %:p:h ファイルのあるディレクトリのフルパス
" autocmd BufWritePost * :silent !(cd %:p:h && latexmk %:t) > .latexmk_log 2>&1 &


" === Plugin settings ===
" vim-autoclose setting
let g:AutoClosePairs = "() {} [] $ \" \'"


" lsp completion options
let g:asyncomplete_min_chars = 1
