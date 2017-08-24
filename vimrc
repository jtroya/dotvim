execute pathogen#infect()

set hidden
set number
set vb t_vb=
set ts=2 sts=2 sw=2 expandtab
syntax on

if has("autocmd")
  filetype plugin indent on
endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:jsx_ext_required = 0
let g:javascript_plugin_jsdoc = 10
set foldmethod=syntax
let g:syntastic_javascript_checkers = ['eslint']
