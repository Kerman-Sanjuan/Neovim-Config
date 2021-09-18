set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
" Python, JavaScript, Go
set scrolloff=10
let g:ale_disable_lsp = 1
let g:ale_linters = {'c': ['clang'],'python':['pylint']}
filetype plugin indent on
set updatetime=300                  " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions=cro                  " Stop newline continution of comments
set clipboard=unnamedplus  
set number
set autoindent 
" Leather key
set termguicolors
let g:python_highlight_space_errors = 0
set encoding=utf-8
" Disable auto-detectionuof virtualenvironments
let g:ale_virtualenv_dir_names = ['']
" Environment variable ${VIRTUAL_ENV} is always used
set mouse=a
let g:gruvbox_enable_bold = 1
let g:python3_host_prog = ''
let g:python_host_prog = ''
autocmd vimenter * ++nested colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
set laststatus=2
set noshowmode
" colorscheme material
let g:airline_theme = 'gruvbox'
set smartindent
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
filetype indent on
highlight Normal ctermbg=NONE

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
map <C-s> :Files <CR>
nmap <space>w :w<CR>
nmap <space>q :Bdelete<CR>
nmap <space>Q :q<CR>
" File explorer
nnoremap <space>e :CocCommand explorer<CR>
nnoremap <space>s :Files <CR>
nnoremap <space>j :AnyJump<CR>
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"Easymotion shortcut
nmap <space>s <Plug>(easymotion-s2)
"Cursor line edition
"
set cursorline

"CONFIG FZF
let g:fzf_colors = {
	\ 'fg':      ['fg', 'GruvboxGray'],
	\ 'bg':      ['bg', 'Normal'],
	\ 'hl':      ['fg', 'GruvboxRed'],
	\ 'fg+':     ['fg', 'GruvboxGreen'],
	\ 'bg+':     ['bg', 'GruvboxBg1'],
	\ 'hl+':     ['fg', 'GruvboxRed'],
	\ 'info':    ['fg', 'GruvboxOrange'],
	\ 'prompt':  ['fg', 'GruvboxBlue'],
	\ 'header':  ['fg', 'GruvboxBlue'],
	\ 'pointer': ['fg', 'Error'],
	\ 'marker':  ['fg', 'Error'],
	\ 'spinner': ['fg', 'Statement'],
	\ }
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4"
let g:pep8_ignore="E501,W601"
let g:pymode_lint_ignore="E501,W601"
let g:pymode_lint_ignore="E501,W601"
let g:pymode_lint_ignore = "E501,W"
set backspace=indent,eol,start
set bs=indent,eol,start
let g:airline#extensions#ale#enabled = 1
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
" TAB mapping
nnoremap <silent><Tab> :BufferLineCycleNext<CR>
nnoremap <silent><S-Tab> :BufferLineCyclePrev<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
let g:ale_sign_info = "ℹ"
source $HOME/.config/nvim/vim-plug/plugins.vim
