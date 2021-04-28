if (has("termguicolors"))
	set termguicolors
endif

syntax enable

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
set expandtab tabstop=2 shiftwidth=2 softtabstop=2

autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif


autocmd BufNewFile,BufRead *.rs set noexpandtab tabstop=4
autocmd BufNewFile,BufRead *.php set expandtab tabstop=4
autocmd BufNewFile,BufRead *.js set expandtab tabstop=4
autocmd BufNewFile,BufRead *.jsx set expandtab tabstop=4
autocmd BufNewFile,BufRead *.py set expandtab tabstop=4

packadd termdebug "Enable terminal-debug
let termdebugger = "rust-gdb" "Use rust-gdb instead of default gdb

au BufEnter * if &buftype == 'terminal' | :startinsert | endif
