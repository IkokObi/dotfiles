" ===== MarkDown =====
autocmd BufRead,BufNewFile *.mkd  set filetype=markdown
autocmd BufRead,BufNewFile *.md  set filetype=markdown
autocmd Filetype markdown source <sfile>:h/ftplugins/markdown.vim

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
autocmd Filetype python source <sfile>:h/ftplugins/python.vim


" ===== C++ =====
autocmd FileType cpp set softtabstop=4 
autocmd FileType cpp set shiftwidth=4


" ===== TeX =====
autocmd BufRead,BufNewFile *.tex set filetype=tex
autocmd BufRead,BufNewFile *.tex source <sfile>:h/ftplugins/tex.vim

" ===== JSON =====
autocmd Filetype json source <sfile>:h/ftplugins/json.vim

" ===== yaml =====
autocmd Filetype yaml source <sfile>:h/ftplugins/yaml.vim
