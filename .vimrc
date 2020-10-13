call plug#begin('~/.vim/plugged')

    " Make sure you use single quotes

    " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
    Plug 'junegunn/vim-easy-align'

    " Any valid git URL is allowed
    Plug 'https://github.com/junegunn/vim-github-dashboard.git'

    " Group dependencies, vim-snippets depends on ultisnips
    "Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

    " On-demand loading
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

    " Using a non-master branch
    "Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

    " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
    Plug 'fatih/vim-go', { 'tag': '*' }

    " Plugin options
    Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

    " Plugin outside ~/.vim/plugged with post-update hook
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

    " Unmanaged plugin (manually installed and updated)
    Plug '~/my-prototype-plugin'

    "Distraction-free writing
    Plug 'junegunn/goyo.vim'
    Plug 'valloric/youcompleteme'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    
    "Plug 'dracula/vim'
    Plug 'zenorocha/dracula-theme'
    Plug 'craigemery/vim-autotag'
    " Add plugins to &runtimepath
call plug#end()

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set ruler
set shiftround
set backspace=indent,eol,start
set autoindent
set smartindent
set number
set nocompatible
set background=dark
set directory=/tmp
set nobackup
set noswapfile

syntax on
