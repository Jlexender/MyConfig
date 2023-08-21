""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file is use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to the file.
set number

" Highlight cursor line underneath the cursor horizontally.
set nocursorline

" Highlight cursor line underneath the cursor vertically.
set nocursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do wrap lines. 
set wrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Set English dictionary
setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Neat cursors
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"
let &t_SR = "\e[3 q"

" Relative number mode
set relativenumber	
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber 

" Backspace now works everywhere
set backspace=indent,eol,start

" Correcting mistakes
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
set spelllang=en_us
set nospell

" Mouse works now
set mouse=a

" No more weird pink color for auto completion
highlight Pmenu ctermbg=gray guibg=gray

" No more weird tilde blue color
highlight NonText ctermfg=8

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0

Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'
    hi Conceal ctermbg=none

" If you want :UltiSnipsEdit to split your window.
	let g:UltiSnipsEditSplit="vertical"

" Exit INSERT MODE
Plug 'jdhao/better-escape.vim'
	let g:better_escape_shortcut = ['jj']

" File manager basically
Plug 'preservim/nerdtree'

" Theme manager
Plug 'dylanaraps/wal'

Plug 'valloric/youcompleteme'
" Remove <Tab> from the list of keys mapped by YCM.
	let g:ycm_key_list_select_completion = ['<Down>']
	inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "ᐅ"
	let g:ycm_show_diagnostics_ui = 0

" AutoClose brackets
Plug 'townk/vim-autoclose'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Set dark theme for terminal
colorscheme wal
set background=dark


