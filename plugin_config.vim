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

let g:fzf_action = {
			\ 'ctrl-t': 'tab split',
			\ 'ctrl-s': 'split',
			\ 'ctrl-v': 'vsplit'
			\}

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
