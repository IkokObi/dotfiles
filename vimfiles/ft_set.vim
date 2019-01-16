" ===== MarkDown =====
autocmd BufRead,BufNewFile *.mkd  set filetype=markdown
autocmd BufRead,BufNewFile *.md  set filetype=markdown
autocmd FileType markdown inoremap <Leader><Tab> <Esc>>>
autocmd FileType markdown inoremap <Leader><S-Tab> <Esc><<
autocmd FileType markdown nnoremap <Leader><Tab> >>
autocmd FileType markdown nnoremap <Leader><S-Tab> <<


" ===== JavaScriptの設定 =====
" autocmd FileType html setlocal indentexpr=""
" autocmd FileType javascript setl autoindent 
" autocmd FileType javascript setl smartindent 
" autocmd FileType javascript setl tabstop=8 expandtab shiftwidth=2 softtabstop=2 
" 必要ならコメントアウト外す
autocmd BufRead,BufNewFile *.es6 setfiletype javascript
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS


" ===== Python =====
" docstringは表示しない
autocmd FileType python setlocal completeopt-=preview
autocmd BufNewFile *.py 0r !sed -e
	\ "s;CREATED_DATE;`date +'\%Y/\%m/\%d \%H:\%M:\%S \%Z'`;"
	\ ~/dotfiles/vimfiles/template/python.txt 


" ===== C++ =====
set smartindent "オートインデント
set softtabstop=4 "タブが置き換わるスペースの数
set shiftwidth=4 "自動的に入力されたインデントの空白を4つ分に設定
set smarttab


" ===== TeX =====
autocmd BufRead,BufNewFile *.tex set spell
autocmd BufRead,BufNewFile *.tex set spelllang=en,cjk
" 移動に時間がかかるのでcursorlineをoffにする
autocmd BufRead,BufNewFile *.tex set nocursorline
autocmd InsertEnter * set cursorline
autocmd InsertEnter * hi clear CursorLine
autocmd InsertEnter * highlight CursorLine ctermbg=233 
autocmd InsertLeave * set nocursorline
inoremap $ $$<Left>
