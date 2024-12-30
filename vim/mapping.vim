" 表示行単位で移動
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk

" ^, $（文頭, 文末）のキーマッピング
" あらゆるモード時に有効化する（visual-modeでも使いたい）
noremap <Space>h  ^
noremap <Space>l  $

" アンダースコアの手前まで削除
nnoremap c_ ct_
nnoremap d_ dt_

" emacs-like key mappings
inoremap <silent> <C-a> <Esc>^i
inoremap <silent> <C-e> <Esc>$a
inoremap <silent> <C-f> <right>
inoremap <silent> <C-b> <left>
inoremap <silent> <C-t><C-t> <C-t>
inoremap <silent> <C-t><C-d> <C-d>
inoremap <silent> <C-d> <Del>
inoremap <silent> <C-k> <C-O>D
" inoremap <silent> <C-y> <C-r>" " 補完の決定と競合するので除外
" inoremap <silent> <C-l> <C-t>
" inoremap <silent> <C-j> <C-d>

" jキーを二度押しでESCキー
inoremap <silent> jj <Esc>
inoremap <silent> jJ j<Esc>

" カッコ等の自動補完
" ---> pluginを利用するようにした
" inoremap { {}<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap ' ''<left>

" ビジュアルモード時にカッコ等で囲む
" 例: hogeをビジュアル選択して[を入力 ---> [hoge]
vnoremap [ di[]<esc><left>p
vnoremap { di{}<esc><left>p
vnoremap ( di()<esc><left>p
" vnoremap < di<><esc><left>p " インデントと競合するので除外
vnoremap $ di$$<esc><left>p
vnoremap " di""<esc><left>p
vnoremap ' di''<esc><left>p
vnoremap ` di``<esc><left>p

" pwdをクリップボードにコピー
nnoremap <silent> <Space>w :!pwd\|pbcopy<Enter><Enter>
