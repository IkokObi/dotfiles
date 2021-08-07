" ===== JavaScriptの設定 =====
" autocmd FileType html setlocal indentexpr=""
" autocmd FileType javascript setl autoindent 
" autocmd FileType javascript setl smartindent 
" autocmd FileType javascript setl tabstop=8 expandtab shiftwidth=2 softtabstop=2 
" 必要ならコメントアウト外す
autocmd BufRead,BufNewFile *.es6, *.js setfiletype javascript
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript set softtabstop=2
autocmd FileType javascript set expandtab
autocmd FileType javascript set shiftwidth=2


" ===== JavaScriptの設定 =====
autocmd FileType html set softtabstop=2
autocmd FileType html set shiftwidth=2


" ===== C++ =====
autocmd FileType cpp set softtabstop=4 
autocmd FileType cpp set shiftwidth=4


" ===== TeX =====
autocmd BufRead,BufNewFile *.tex  set filetype=tex
autocmd BufRead,BufNewFile *.tex set spell
autocmd BufRead,BufNewFile *.tex set spelllang=en,cjk
" 移動に時間がかかるのでcursorlineをoffにする
" autocmd BufRead,BufNewFile *.tex set nocursorline
" autocmd InsertEnter * set cursorline
" autocmd InsertEnter * hi clear CursorLine
" autocmd InsertEnter * highlight CursorLine ctermbg=233 
" autocmd InsertLeave * set nocursorline
autocmd BufRead,BufNewFile *.tex
	    \ let g:AutoClosePairs = "() {} [] $ \" \'"
autocmd BufRead,BufNewFile *.tex set softtabstop=2
autocmd BufRead,BufNewFile *.tex set shiftwidth=2
autocmd BufRead,BufNewFile *.tex let g:tex_comment_nospell=1
autocmd BufRead,BufNewFile *.tex let g:tex_conceal=''

" ===== JSON =====
autocmd Filetype json source <sfile>:h/ftplugins/json.vim

" ===== yaml =====
autocmd Filetype yaml source <sfile>:h/ftplugins/yaml.vim

" ===== CSV =====
autocmd BufRead,BufNewFile *.csv  set filetype=csv
autocmd FileType csv let g:enable_spelunker_vim = 0

" ===== txt =====
" autocmd BufRead,BufNewFile *.txt  set filetype=text
autocmd FileType text let g:enable_spelunker_vim = 0
