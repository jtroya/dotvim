" vim-plug
call plug#begin('~/.vim/plugged')

" plugin section
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
" end vim-plug
call plug#end()

if has("autocmd")
  filetype plugin indent on
endif

" Lightline
set laststatus=2
let g:lightline = {'colorscheme': 'powerline' }
if !has('gui_running')
  set t_Co=256
endif

" Fonts
set guifont=Menlo\ Regular:h18

" Tabs
set tabstop=2
set shiftwidth=2
set expandtab

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Theme
set number
let g:solarized_termcolors=256
set background=light
colorscheme solarized
