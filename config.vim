if (has("termguicolors"))
	set termguicolors
endif
syntax enable
colorscheme dracula
filetype plugin indent on

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set splitright
set splitbelow

au BufEnter * if &buftype == 'terminal' | :startinsert | endif

function! OpenTerminal()
	split term://bash
	resize 10
endfunction

set number
set mouse=a
set autoread

autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif

set noexpandtab tabstop=2 shiftwidth=2 softtabstop=2

autocmd BufNewFile,BufRead *.rs setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufNewFile,BufRead *.php setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufNewFile,BufRead *.py setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
