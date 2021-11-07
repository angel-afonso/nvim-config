let g:vim_plug_fpath = expand(stdpath('data') . '/site/autoload/plug.vim')
if !filereadable(g:vim_plug_fpath)
  if !executable('curl')
    echoerr 'Curl not available on your system, you may install vim-plug by yourself.'
    finish
  endif
  echomsg 'Installing Vim-plug on your system'
  let g:vim_plug_furl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  silent execute printf('!curl -fLo %s --create-dirs %s', g:vim_plug_fpath, g:vim_plug_furl)
  augroup plug_init
      autocmd!
      autocmd VimEnter * PlugInstall --sync | quit |source $MYVIMRC
  augroup END
endif

let g:PLUGIN_HOME=expand(stdpath('data') . '/plugged')

call plug#begin("~/.vim/plugged")

" SYNTAX HIGHLIGHTING
Plug 'sheerun/vim-polyglot'

" STATUS BAR
Plug 'itchyny/lightline.vim'
Plug 'josa42/vim-lightline-coc'

" FILE EXPLORER
Plug 'preservim/nerdtree'

" TYPING
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/tagalong.vim'

" EDITOR
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'APZelos/blamer.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" THEME 
Plug 'kaicataldo/material.vim'

" EXTRA
Plug 'tpope/vim-fugitive'
Plug 'github/copilot.vim'

call plug#end()
