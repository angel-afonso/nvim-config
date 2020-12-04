let g:files = ['plugins.vim', 
	\'plugin_config.vim' ,
	\'mappings.vim', 
	\'config.vim']  
   
let g:root = expand('<sfile>:p:h')
   
for s:file in g:files
	execute printf('source %s/%s', g:root, s:file)
endfor 
