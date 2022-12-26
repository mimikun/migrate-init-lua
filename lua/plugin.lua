-- vim-plug auto download
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

---- vim-plug settings
call plug#begin()

Plug 'alker0/chezmoi.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
Plug 'vim-denops/denops.vim'
Plug 'Omochice/dps-translate-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'lambdalisue/fern.vim', {'branch': 'main'}
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'lambdalisue/gin.vim'
Plug 'thinca/vim-quickrun'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'thinca/vim-scouter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'airblade/vim-gitgutter'
Plug 'rcabralc/monokai-airline.vim'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'nastevens/vim-cargo-make'
Plug 'cespare/vim-toml'
Plug 'nastevens/vim-duckscript'
Plug 'NoahTheDuke/vim-just'
Plug 'IndianBoy42/tree-sitter-just'

call plug#end()
