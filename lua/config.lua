" ファイルの種類毎に設定ファイルを記述できるようにする
filetype plugin indent off
""""""" 参考: https://trap.jp/post/524/
" シンタックスハイライトを有効にする
syntax enable
" カラースキームを設定
" $XDG_CONFIG_HOME/nvim/colors 以下にある
colorscheme monokai

" True Colorでのシンタックスハイライト
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" ファイル上の1行が画面上では複数行にわたっているとき
" NORMALモード時の j/kで見た目通りに移動できるようにする
nnoremap j gj
nnoremap k gk

" ESCキー連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
"ある行の行頭から前の行の行末に移動したり, 逆に行末から次の行の行頭に移動できるようにする
" BackSpaceキー, SPACEキーで有効になる
" <(←キー),>(→キー)はNORMALモード及びVISUALモードで各キーにこの機能を割り当て
" [(←キー),](→キー)はINSERTモード(置換含む)でこの機能を有効にする
set whichwrap=b,s,<,>,[,]

" GUI VIM用の設定
imap <S-CR> <End><CR>
imap <C-S-CR> <Up><End><CR>
nnoremap <S-CR> mzo<ESC>`z
nnoremap <C-S-CR> mzO<ESC>`z

" Pythonのパスを指定
let g:python_host_prog = expand('~/.asdf/shims/python2')
let g:python3_host_prog = expand('~/.asdf/shims/python3')

" Ctrl+Wを押した後にnを押すことで新規タブを開けるようにする
nnoremap <C-w>n <Esc>:enew<Return>

" NeoVimの無名レジスタ(yでヤンクしたときにコピーする先)とOSのクリップボードを結びつける
" 低スぺック環境ではオフにする
"set clipboard+=unnamedplus
" win32yankの設定
"nnoremap <silent> <Space>y :.w !win32yank.exe -i<CR><CR>
"vnoremap <silent> <Space>y :w !win32yank.exe -i<CR><CR>
"nnoremap <silent> <Space>p :r !win32yank.exe -o<CR>
"vnoremap <silent> <Space>p :r !win32yank.exe -o<CR>

filetype plugin indent on
