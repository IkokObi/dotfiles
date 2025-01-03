" Python
if executable('pyls')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'allowlist': ['python']
        \ })
endif

if executable('jedi-language-server')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'jedi-language-server',
        \ 'cmd': {server_info->['jedi-language-server']},
        \ 'allowlist': ['python']
        \ })
endif

" TeX
let s:texlab_path = '~/dotfiles/tex/texlab'
if executable(expand(s:texlab_path))
  au User lsp_setup call lsp#register_server({
        \ 'name': 'texlab',
        \ 'cmd': {server_info->[expand(s:texlab_path)]},
        \ 'allowlist': ['tex', 'bib', 'sty'],
        \ })
endif

" 事前にnpm install -g typescript typescript-language-server
" TypeScript, JavaScript
if executable('typescript-language-server')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'typescript-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
        \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'package.json'))},
        "\ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
        \ 'allowlist': ['typescript', 'typescript.tsx', 'javascript', 'javascript.jsx'],
        \ })
endif

" TypeScript, JavaScript
if executable('typescript-language-server')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'typescript-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
        \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'package.json'))},
        "\ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
        \ 'allowlist': ['typescript', 'typescript.tsx', 'javascript', 'javascript.jsx'],
        \ })
endif
