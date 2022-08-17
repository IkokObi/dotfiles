" Python
if executable('pyls')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python']
        \ })
endif

" TeX
let s:texlab_path = '~/dotfiles/setups/tex/texlab'
if executable(expand(s:texlab_path))
  au User lsp_setup call lsp#register_server({
        \ 'name': 'texlab',
        \ 'cmd': {server_info->[expand(s:texlab_path)]},
        \ 'whitelist': ['tex', 'bib', 'sty'],
        \ })
endif
