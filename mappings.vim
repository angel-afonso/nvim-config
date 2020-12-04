nnoremap <silent> <C-b> :NERDTreeToggle<CR>

tnoremap <Esc> <C-\><C-n>

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

