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

let g:lens#disabled_filetypes = ['nerdtree', 'fzf']

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

let g:ale_disable_lsp = 1
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx, *.js'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx, *.js'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,tsx,js'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
			\ 'typescript.tsx': 'jsxRegion,tsxRegion',
			\ 'javascript.jsx': 'jsxRegion',
			\ }

let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
let NERDTreeMapOpenInTab='\r'

 if (has("termguicolors"))
	set termguicolors
endif
syntax enable
colorscheme dracula
filetype plugin indent on

let g:ackprg = 'ag --nogroup --nocolor --column'

let g:ale_fixers = {
			\  'javascript': ['prettier','eslint'],
			\  'typescript': ['prettier','eslint'],
			\	 'javascriptreact': ['prettier','eslint'],
			\}

let g:ale_linters = {
			\   'php': ['php'],
		  \		'rust': ['analyzer'],
			\		'python': ['autopep8', 'isort'],
			\}

let g:ale_completion_autoimport = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
let g:rustfmt_autosave = 1
let g:dart_format_on_save = 1
let g:javascript_plugin_jsdoc = 1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <silent> <C-b> :NERDTreeToggle<CR>


set splitright
set splitbelow

tnoremap <Esc> <C-\><C-n>
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

function! OpenTerminal()
	split term://bash
	resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up> <Esc>:m .-2<CR>==gi
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv

nnoremap <S-A-Down> :t .<CR>==
nnoremap <S-A-Up> :t .-1<CR>==
inoremap <S-A-Down> <Esc>:t .<CR>==gi
inoremap <S-A-Up> <Esc>:t .-1<CR>==gi
vnoremap <S-A-Down> :t '>+1<CR>gv=gv
vnoremap <S-A-Up> :t '<-1<CR>gv=gv

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <C-p> :FZF<CR>
nnoremap <silent> <C-G> :Ag <CR>

let g:fzf_action = {
			\ 'ctrl-t': 'tab split',
			\ 'ctrl-s': 'split',
			\ 'ctrl-v': 'vsplit'
			\}

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
set number
set mouse=a
set autoread

autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif

set noexpandtab tabstop=2 shiftwidth=2 softtabstop=2

autocmd BufNewFile,BufRead *.rs setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufNewFile,BufRead *.php setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufNewFile,BufRead *.py setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
