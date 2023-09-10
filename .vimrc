""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  	 _____  _     _    _  _____ _____ _   _  _____
" 	|  __ \| |   | |  | |/ ____|_   _| \ | |/ ____|
" 	| |__) | |   | |  | | |  __  | | |  \| | (___
" 	|  ___/| |   | |  | | | |_ | | | | . ` |\___ \
" 	| |    | |___| |__| | |__| |_| |_| |\  |____) |
"   |_|    |______\____/ \_____|_____|_| \_|_____/
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

" YouCompleteMe is a fast, as-you-type, fuzzy-search code completion, 
" comprehension and refactoring engine for Vim.
Plugin 'Valloric/YouCompleteMe'
	let g:ycm_show_diagnostics_ui=0	
	let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
	let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
	let g:SuperTabDefaultCompletionType = '<C-n>'
	
" UltiSnips is the ultimate solution for snippets in Vim. It has many features, speed being one of them.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" You need to change this to something other than <tab> (TODO)
	let g:UltiSnipsExpandTrigger="<tab>"
	let g:UltiSnipsJumpForwardTrigger="<tab>"
	let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
	let g:UltiSnipsEditSplit="vertical"

" Supertab is a vim plugin which allows you to use <Tab> for all your insert
" completion needs.
Plugin 'ervandew/supertab'

" VimTeX is a modern Vim and Neovim filetype and syntax plugin for LaTeX files.
Plugin 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0
	
" A vim plugin extends the Conceal feature for LaTeX.
Plugin 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'
    hi Conceal ctermbg=none

" Better-escape.vim is created to help Vim/Nvim users escape insert mode quickly
" using their customized key combinations, without experiencing the lag.
Plugin 'jdhao/better-escape.vim'
	let g:better_escape_shortcut = ['jk', 'kj']

" The NERDTree is a file system explorer for the Vim editor. 
Plugin 'preservim/nerdtree'
	map <C-n> :NERDTreeToggle<CR>

" A vim colorscheme for use with wal. 
Plugin 'dylanaraps/wal'

" This plugin for Vim enable an auto-close chars feature for you.
" Plugin 'townk/vim-autoclose'

" Neovim and Vim plug-in that provides an extremely fast "fuzzy" mechanism for
" opening, running, jumping to files with a minimum of keystrokes
Plugin 'Command-T'
	nmap <C-t> :CommandT<CR>

" Asynchronous translating plugin for Vim
Plugin 'voldikss/vim-translator'
	let g:translator_target_lang='ru'
	let g:translator_source_lang='en'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	 __      _______ __  __ _____   _____ 
"	 \ \    / /_   _|  \/  |  __ \ / ____|
"	  \ \  / /  | | | \  / | |__) | |     
"	   \ \/ /   | | | |\/| |  _  /| |     
"	    \  /   _| |_| |  | | | \ \| |____ 
"	     \/   |_____|_|  |_|_|  \_\\_____|
"                                      
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" GENERAL
filetype indent off
syntax on
set number
set nocursorline
set nocursorcolumn
set nobackup
set showmode
set showcmd

" INSERTING
set shiftwidth=4
set tabstop=4
set mouse=a
set backspace=indent,eol,start
set completeopt-=preview
set autoindent

" SEARCHING & MOVING
set wrap
set incsearch
set ignorecase
set smartcase
set showmatch
set scrolloff=10
set hlsearch

" Relative number mode
set relativenumber	
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber 

" MISCELLANEOUS

" Set the commands to save in history default number is 20.
set history=100

" Autocompletion & spell correction
setlocal nospell
set spelllang=ru,en_us
let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'
inoremap <C-l> <Esc>[s1z=`]a
inoremap $$ $$<Left>

" VISUALS

colorscheme wal
set background=dark

" Cursors 
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"
let &t_SR = "\e[3 q"

highlight Pmenu ctermbg=gray guibg=gray
highlight NonText ctermfg=8

