" ===== MarkDown =====
autocmd BufRead,BufNewFile *.mkd  set filetype=markdown
autocmd BufRead,BufNewFile *.md  set filetype=markdown
autocmd FileType markdown set softtabstop=4
autocmd FileType markdown set shiftwidth=4


" ===== JavaScriptの設定 =====
" autocmd FileType html setlocal indentexpr=""
" autocmd FileType javascript setl autoindent 
" autocmd FileType javascript setl smartindent 
" autocmd FileType javascript setl tabstop=8 expandtab shiftwidth=2 softtabstop=2 
" 必要ならコメントアウト外す
autocmd BufRead,BufNewFile *.es6 setfiletype javascript
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript set softtabstop=2
autocmd FileType javascript set shiftwidth=2


" ===== JavaScriptの設定 =====
autocmd FileType html set softtabstop=2
autocmd FileType html set shiftwidth=2


" ===== Python =====
autocmd BufNewFile *.py 0r !sed -e
	\ "s;CREATED_DATE;`date +'\%Y/\%m/\%d \%H:\%M:\%S \%Z'`;"
	\ ~/dotfiles/vimfiles/template/python.txt 
autocmd FileType python inoremap <Leader>c """  """<Left><Left><Left><Left>
autocmd FileType python set softtabstop=4 "タブが置き換わるスペースの数
autocmd FileType python set shiftwidth=4 "自動的に入力されたインデントの空白を4つ分に設定
" docstringは表示しない
autocmd FileType python setlocal completeopt-=preview


" ===== C++ =====
autocmd FileType cpp set softtabstop=4 
autocmd FileType cpp set shiftwidth=4


" ===== TeX =====
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

" ===== JSON =====
autocmd BufRead,BufNewFile *.json set softtabstop=2
autocmd BufRead,BufNewFile *.json set shiftwidth=2
