"===== MarkDown =====
autocmd BufRead,BufNewFile *.mkd  set filetype=markdown
autocmd BufRead,BufNewFile *.md  set filetype=markdown


"===== JavaScriptの設定 =====
" autocmd FileType html setlocal indentexpr=""
" autocmd FileType javascript setl autoindent 
" autocmd FileType javascript setl smartindent 
" autocmd FileType javascript setl tabstop=8 expandtab shiftwidth=2 softtabstop=2 
" 必要ならコメントアウト外す
autocmd BufRead,BufNewFile *.es6 setfiletype javascript

autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

" docstringは表示しない
autocmd FileType python setlocal completeopt-=preview


" vimtex
let g:vimtex_compiler_latexmk_engines = { '_' : '-pdfdvi' }
let g:vimtex_compiler_latexmk = {
     \ 'background': 1,
     \ 'build_dir': '',
     \ 'continuous': 1,
     \ 'options': [
     \    '-pdfdvi', 
     \    '-verbose',
     \    '-file-line-error',
     \    '-synctex=1',
     \    '-interaction=nonstopmode',
     \],
     \}

let g:vimtex_view_general_viewer
     \ = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'
autocmd FileType tex syntax spell toplevel
let g:vimtex_compiler_latexmk['callback'] = 0 "callbackの警告を表示しない

if !exists('g:neocomplete#sources#omni#input_patterns')
	let g:neocomplete#sources#omni#input_patterns = {}
endif
" let g:neocomplete#sources#omni#input_patterns.tex = g:vimtex#re#neocomplete

