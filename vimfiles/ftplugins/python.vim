inoremap <Leader>c """  """<Left><Left><Left><Left>
set softtabstop=4 "タブが置き換わるスペースの数
set shiftwidth=4 "自動的に入力されたインデントの空白を4つ分に設定
" setlocal completeopt-=preview " docstringは表示しない

" lsp setting
let s:pyls_path = '~/Settings/python-settings/complete/bin/pyls'
if (executable(expand(s:pyls_path)))
    au User lsp_setup call lsp#register_server({
    \ 'name': 'pyls',
    \ 'cmd': {server_info->[expand(s:pyls_path)]},
    \ 'whitelist': ['python']
    \ })
endif

" ale setting
let s:venv_python_path = '~/Settings/python-settings/complete/bin/'
let g:ale_python_flake8_executable = expand(s:venv_python_path) . 'flake8'
let g:ale_python_isort_executable = expand(s:venv_python_path) . 'isort'
let g:ale_python_black_executable = expand(s:venv_python_path) . 'black'
let g:ale_python_isort_options = '-l 88 --multi-line 3 --trailing-comma'
let g:ale_python_black_options = '-l 88'