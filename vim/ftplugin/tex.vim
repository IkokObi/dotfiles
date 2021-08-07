" Basic settings
setlocal spell
setlocal spelllang=en,cjk
setlocal softtabstop=2
setlocal shiftwidth=2

" 移動に時間がかかるのでcursorlineをoffにする
" autocmd BufRead,BufNewFile *.tex set nocursorline
" autocmd InsertEnter * set cursorline
" autocmd InsertEnter * hi clear CursorLine
" autocmd InsertEnter * highlight CursorLine ctermbg=233 
" autocmd InsertLeave * set nocursorline


" === Plugin settings ===
let g:AutoClosePairs = "() {} [] $ \" \'"
let g:tex_comment_nospell=1
let g:tex_conceal=''
