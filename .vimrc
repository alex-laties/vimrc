colorscheme molokai

let mapleader = ","

let g:pathogen_disabled = ["python-mode"]

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style = "inc"

let g:airline_enable_branch = 1
let g:airline_branch_empty_message = ''
let g:airline#extensions#tagbar#enabled = 0

let g:pymode_lint_checker = "pyflakes"
let g:pymode_folding = 0
let g:pymode_utils_whitespace = 0

let g:haddock_browser = "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

let g:tagbar_autofocus = 1

let g:vaxe_prefer_openfl = 1
let g:vaxe_prefer_first_in_directory = 1

call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

inoremap kj <ESC>
map <Leader>s :Sscratch<CR>
map <Leader>a :tabp<CR>
map <Leader>d :tabn<CR>
map <Leader>p :ptag<CR>
map <Leader>t :TagbarToggle<CR>
map <Leader>ga :!git add %<CR>
nnoremap <C-t> :tabnew<CR>
set expandtab
set shiftwidth=2
set tabstop=2
set smarttab
set laststatus=2
set rtp+=$GOROOT/misc/vim
syntax on
filetype plugin indent on
