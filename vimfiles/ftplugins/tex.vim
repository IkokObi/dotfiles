" lsp setting
let s:texlab_path = '~/Settings/tex/texlab'
if executable(expand(s:texlab_path))
   au User lsp_setup call lsp#register_server({
      \ 'name': 'texlab',
      \ 'cmd': {server_info->[expand(s:texlab_path)]},
      \ 'whitelist': ['tex', 'bib', 'sty'],
      \ })
endif

" " previous settings
set spell
set spelllang=en,cjk
" 移動に時間がかかるのでcursorlineをoffにする
" autocmd BufRead,BufNewFile *.tex set nocursorline
" autocmd InsertEnter * set cursorline
" autocmd InsertEnter * hi clear CursorLine
" autocmd InsertEnter * highlight CursorLine ctermbg=233 
" autocmd InsertLeave * set nocursorline
let g:AutoClosePairs = "() {} [] $ \" \'"
set softtabstop=2
set shiftwidth=2
let g:tex_comment_nospell=1
autocmd BufWritePost * :silent !latexmk %:p > .latexmk_log 2>&1 &
"let g:tex_conceal=''
