" Basic settings
setlocal softtabstop=4 "タブが置き換わるスペースの数
setlocal shiftwidth=4 "自動的に入力されたインデントの空白を4つ分に設定
setlocal completeopt-=preview " docstringは表示しない


" 80列目以降の背景色を変更
execute 'setlocal colorcolumn=' . join(range(80,200), ",")
hi ColorColumn ctermbg=234


" Key mappings
inoremap <Leader>c """  """<Left><Left><Left><Left>


" === Plugin settings ===
" ale setting
let g:python_max_line_length = 88
let g:ale_python_flake8_executable = 'flake8'
let g:ale_python_isort_executable = 'isort'
let g:ale_python_black_executable = 'black'
let g:ale_python_flake8_options = '--max-line-length ' . g:python_max_line_length . ' --ignore=E203,W503'
let g:ale_python_isort_options = '-l ' . g:python_max_line_length . ' --multi-line 3 --trailing-comma'
let g:ale_python_black_options = '-l ' . g:python_max_line_length

" indentLine setting
let b:indentLine_enabled = 1
