let g:lens#disabled_filetypes = ['nerdtree', 'fzf']

colorscheme material 
let g:material_theme_style = 'darker'
let g:material_terminal_italics = 1
set noshowmode

let g:lightline = {
  \ 'colorscheme': 'material_vim',
  \ 'active': {
  \   'left': [ ['mode', 'paste'], ['readonly', 'filename', 'gitbranch'] ],
  \   'right': [ ['lineinfo'], ['percent'], ['fileformat', 'fileencoding', 'filetype'] ]
  \ },
  \ 'separator': {
  \   'right': '',
  \   'left': '',
  \ },
  \ 'subseparator': {
  \   'right': '',
  \   'left': '',
  \ },
  \ 'tabline_separator': {
  \   'right': '',
  \   'left': '',
  \ },
  \ 'tabline_subseparator': {
  \   'right': '',
  \   'left': '',
  \ },
  \ 'component_function': {
  \   'gitbranch': 'LightlineGitbranch',
  \   'lineinfo': 'LightlineLineinfo',
  \ }
  \ }

function! LightlineGitbranch() abort
    if exists('*fugitive#head')
        let branch = fugitive#head()
        return branch !=# '' ? branch . ' ' : ''
   endif
    return fugitive#head()
endfunction

function! LightlineLineinfo()
  return col('.') . ':' . line('.') . '/' . line('$')
endfunction

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

autocmd CursorHold * silent call CocActionAsync('highlight')

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

let g:blamer_enabled = 1

let g:vimspector_enable_mappings = 'HUMAN'
nmap ee :call vimspector#Launch()<CR>
nmap <leader>dx :VimspectorReset<CR>
nmap <leader>de :VimspectorEval
nmap <leader>dw :VimspectorWatch
nmap <leader>do :VimspectorShowOutput
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-go', 'CodeLLDB' ]

let g:go_diagnostics_enabled = 0
let g:go_metalinter_enabled = []

let g:go_jump_to_error = 0

let g:go_fmt_command = "goimports"

let g:go_auto_sameids = 0

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
