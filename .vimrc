colorscheme oceanblack

let mapleader = ","

let g:acp_enableAtStartup = 0

let g:airline_enable_branch = 1
let g:airline_branch_empty_message = ''
let g:airline#extensions#tagbar#enabled = 0

let g:haddock_browser = "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style = "inc"

let g:go_def_mapping_enabled = 0
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_smart_case = 1
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#sources#dictionary#dictionaries = {
  \ 'default' : '',
  \ 'vimshell': $HOME.'/.vimshell_hist',
  \ 'scheme'  : $HOME.'/.gosh_completions',
  \ }
let g:neocomplete#sources#syntax#min_keyword_length = 3

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

let g:tagbar_autofocus = 1

let g:vaxe_prefer_openfl = 1
let g:vaxe_prefer_first_in_directory = 1

call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

inoremap kj <ESC>
map <Leader>s :Scratch<CR>
map <Leader>a :tabp<CR>
map <Leader>d :tabn<CR>
map <Leader>p :ptag<CR>
map <Leader>t :TagbarToggle<CR>
map <Leader>ga :!git add %<CR>
nnoremap <C-t> :tabnew<CR>
" autocomplete settings
" autocomplete with ENTER
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" autocomplete with TAB
inoremap <expr><TAB> pumvisible() ? "\<C-y>" : "\<TAB>"
" Close popup and delete like normal on BACKSPACE
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by SPACE 
inoremap <expr><Space> pumvisible() ? "\<C-e><Space>" : "\<Space>"

" golang (vim-go) shortcuts
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gp <Plug>(go-implements)
au FileType go nmap <Leader>gi <Plug>(go-info)
au FileType go nmap <Leader>gr <Plug>(go-rename)
au FileType go nmap <Leader>gb <Plug>(go-build)

" fix bash on windows arrow issues
let windows10=$WINDOWS10
if windows10 == '0'
  set t_ku=[A
  set t_kd=[B
  set t_kr=[C
  set t_kl=[D
endif

set nocompatible

set autoindent
set backspace=indent,eol,start
set expandtab
set laststatus=2
set rtp+=$GOROOT/misc/vim
set shiftwidth=2
set tabstop=2
set smarttab
syntax on
filetype plugin indent on
