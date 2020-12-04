call plug#begin("~/.vim/plugged")

Plug 'dracula/vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'Chiel92/vim-autoformat'
Plug 'alvan/vim-closetag'
Plug 'itchyny/lightline.vim'
Plug 'StanAngeloff/php.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'neomake/neomake'
Plug 'vim-vdebug/vdebug'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'dart-lang/dart-vim-plugin'
Plug 'pangloss/vim-javascript'
Plug 'wakatime/vim-wakatime'
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()
