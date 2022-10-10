local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- Better escape using jk in insert and terminal mode
keymap("i", "jk", "<ESC>", default_opts)
keymap("t", "jk", "<C-\\><C-n>", default_opts)

-- Center search results
keymap("n", "n", "nzz", default_opts)
keymap("n", "N", "Nzz", default_opts)

-- Visual line wraps
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", expr_opts)
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", expr_opts)

-- Better indent
keymap("v", "<S-tab>", "<gv", default_opts)
keymap("v", "<tab>", ">gv", default_opts)

-- Copy/Cut/Paste
keymap("v", "dd", "\"_d", default_opts)
keymap("n", "dd", "\"_d", default_opts)


keymap("v", "<C-c>", "\"+y", default_opts)
keymap("n", "<C-c>", "\"+y", default_opts)

keymap("n", "<C-v>", "\"+p", default_opts)
keymap("v", "<C-v>", "\"+p", default_opts)

keymap("n", "<C-x>", "\"+d", default_opts)
keymap("v", "<C-x>", "\"+d", default_opts)

-- Switch buffer
keymap("n", "<S-h>", ":bprevious<CR>", default_opts)
keymap("n", "<S-l>", ":bnext<CR>", default_opts)

-- Cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)

-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", default_opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", default_opts)

-- Resizing panes
keymap("n", "<C-Left>", ":vertical resize +1<CR>", default_opts)
keymap("n", "<C-Right>", ":vertical resize -1<CR>", default_opts)
keymap("n", "<C-Up>", ":resize -1<CR>", default_opts)
keymap("n", "<C-Down>", ":resize +1<CR>", default_opts)

-- Open telescope
keymap("n", "<C-p>", ":Telescope find_files<CR>", default_opts)
keymap("n", "<C-g>", ":Telescope live_grep<CR>", default_opts)
keymap("n", "<leader>gd", ":Telescope git_status<CR>", default_opts)
keymap("n", "<leader>fb", ":Telescope buffers", default_opts)

-- Tree
keymap("n", "<C-b>", ":NvimTreeToggle<CR>", default_opts)
keymap("i", "<C-b>", ":NvimTreeToggle<CR>", default_opts)
keymap("v", "<C-b>", ":NvimTreeToggle<CR>", default_opts)

-- LSP
keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', default_opts)
keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', default_opts)
keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', default_opts)

-- Editor 
keymap('n', '<A-Down>', ':m .+1<CR>==', default_opts)
keymap('n', '<A-Up>', ':m .-2<CR>==', default_opts)

keymap('i', '<A-Down>', '<Esc>:m .+1<CR>==gi', default_opts)
keymap('i', '<A-Up>', '<Esc>:m .-2<CR>==gi', default_opts)

keymap('v', '<A-Down>', ":m '>+1<CR>gv==gv", default_opts)
keymap('v', '<A-Up>', ":m '<-2<CR>gv==gv", default_opts)

