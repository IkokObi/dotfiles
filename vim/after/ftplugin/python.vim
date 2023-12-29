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
let g:ale_python_ruff_options = '--fixable I' " isortに関するlintのみ自動で修正する

" indentLine setting
let b:indentLine_enabled = 1
