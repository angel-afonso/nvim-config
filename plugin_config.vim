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

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:blamer_enabled = 1

let g:vimspector_enable_mappings = 'HUMAN'
nmap ee :call vimspector#Launch()<CR>
nmap <leader>dx :VimspectorReset<CR>
nmap <leader>de :VimspectorEval
nmap <leader>dw :VimspectorWatch
nmap <leader>do :VimspectorShowOutput
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-go', 'CodeLLDB' ]
