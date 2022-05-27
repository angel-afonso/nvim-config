let mapleader = ' '

nnoremap <silent> <C-b> :NERDTreeToggle<CR>

tnoremap <Esc> <C-\><C-n>

nnoremap <c-t> :call OpenTerminal()<CR>

nmap <silent> <leader>n :noh <CR>

nnoremap <silent> <Leader><Left> :vertical resize -10<CR>
nnoremap <silent> <Leader><Right> :vertical resize +10<CR>
nnoremap <silent> <Leader><Up> :resize -10<CR>
nnoremap <silent> <Leader><Down> :resize +10<CR>

vnoremap <C-c> "+y
nnoremap <C-c> "+y

vnoremap <C-v> "+p
nnoremap <C-v> "+p

nnoremap <C-x> "+d
vnoremap <C-x> "+d

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
tnoremap <A-Left> <C-\><C-n><C-w>h
tnoremap <A-Down> <C-\><C-n><C-w>j
tnoremap <A-Up> <C-\><C-n><C-w>k
tnoremap <A-Right> <C-\><C-n><C-w>l
nnoremap <A-Left> <C-w>h
nnoremap <A-Down> <C-w>j
nnoremap <A-Up> <C-w>k
nnoremap <A-Right> <C-w>l

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
vnoremap <S-A-Down> :t '><CR>gv=gv
vnoremap <S-A-Up> :t '<-1<CR>gv=gv

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent>rn <Plug>(coc-rename)
inoremap <silent><expr> <c-space> coc#refresh()

" nnoremap <C-p> :FZF<CR>
" nnoremap <silent> <C-G> :Ag <CR>

autocmd BufEnter *.go nmap <leader>t  <Plug>(go-test)
autocmd BufEnter *.go nmap <leader>tt <Plug>(go-test-func)
autocmd BufEnter *.go nmap <leader>c  <Plug>(go-coverage-toggle)
autocmd BufEnter *.go nmap <leader>i  <Plug>(go-info)
autocmd BufEnter *.go nmap <leader>ii  <Plug>(go-implements)
autocmd BufEnter *.go nmap <leader>ci  <Plug>(go-describe)
autocmd BufEnter *.go nmap <leader>cc  <Plug>(go-callers)

