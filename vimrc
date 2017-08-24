
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set hidden
set number
set vb t_vb=
set ts=2 sts=2 sw=2 expandtab
sintax on

if has("autocmd")
  filetype plugin indent on
endif

let g:jsx_ext_required = 0
let g:javascript_plugin_jsdoc = 10
set foldmethod=syntax
