if (has("termguicolors"))
	set termguicolors
endif

syntax enable

colorscheme dracula

filetype plugin indent on

function! OpenTerminal()
	split term://bash
	resize 10
endfunction

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set splitright
set splitbelow

set number
set mouse=a
set autoread
set encoding=UTF-8
set noexpandtab tabstop=2 shiftwidth=2 softtabstop=2

autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif


autocmd BufNewFile,BufRead *.rs setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufNewFile,BufRead *.php setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufNewFile,BufRead *.js setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufNewFile,BufRead *.jsx setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufNewFile,BufRead *.py setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

packadd termdebug "Enable terminal-debug
let termdebugger = "rust-gdb" "Use rust-gdb instead of default gdb

au BufEnter * if &buftype == 'terminal' | :startinsert | endif
