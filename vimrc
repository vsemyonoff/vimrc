"
" Author: Vladyslav Semyonov <vsemyonoff@gmail.com>
"

"
" System options
"
set nocompatible                        " use new style Vim options
set viminfo+=n$XDG_CACHE_HOME/viminfo   " do not garbage home folder
set backspace=indent,eol,start          " backspace wrap to prev/next line
set whichwrap+=<,>,[,]                  " cursor keys wrap to prev/next line
set shortmess=I                         " disable startup screen
set showmode                            " show current mode in the status line
set showcmd                             " show last command in the status line
set hidden                              " do not save buffer while switching to another
filetype off

"
" Backup options
"
set noswapfile                          " disable swap files
set nobackup                            " disable backup files

"
" Scrolling options
"
set virtualedit=all
set scrolljump=1                        " scroll by one line
set sidescroll=5                        " side scrolling border
set scrolloff=5                         " start text scrolling if 5 lines remains to top/bottom

"
" Encoding options
"
set encoding=utf-8                      " default Vim encoding
set fileencodings=default,koi8-r        " list of encodings to auto detect

"
" Spell checker options
"
set spelllang=en,ru                     " spell languages list
set nospell                             " disable spell checker

"
" Search options
"
set nohlsearch                          " do not highlight search matches
set ignorecase                          " ignore case while searching
set smartcase                           " ignore case if 'pointer' and honor case if 'Pointer'
set incsearch                           " do incremental searching
set wrapscan                            " cyclic search

"
" Paren options
"
set matchpairs=(:),{:},[:],<:>          " Matching pair characters
set showmatch                           " When a bracket is inserted, briefly jump to the matching one

"
" <Tab> options
"
set softtabstop=4                       " emulate native tabs while deleting tabs
set shiftwidth=4                        " shift size
set tabstop=4                           " tab size
set expandtab                           " use spaces instead of tabs
set smarttab                            " emulate native tabs while indenting

"
" Indent options
"
set cinkeys=0{,0},0),0#,!<Tab>,;,:,o,O,e
set cinoptions=:0,(0,u0,W1s
set indentkeys=!<Tab>,o,O

"
" UI options
"
set statusline=%f\ %y\ format=%{&fileformat}\ encoding=%{&fileencoding}\ %r\ %3m%=%5l:%-5c\%10P
set background=dark                     " assume always dark background
set laststatus=2                        " always show status line
set cursorline                          " highlight current line
set lazyredraw                          " less window redraws
set ttyfast                             " more smooth screen redrawing
set number                              " show line numbers
if has("gui_running")
    set guifont=Menlo:h11
    set guicursor=a:blinkon0            " disable cursor blinking
    set guioptions-=T                   " hide tool bar
    set guioptions-=m                   " hide menu bar
    set guioptions-=l                   " disable left scroll bar
    set guioptions-=r                   " --//-- right
    set guioptions-=b                   " --//-- bottom
    set guioptions-=a                   " disable autoselect
    set mousehide                       " hide the mouse when typing text
    set mouse=a                         " enable mouse
    set guipty                          " use pseudo-tty instead of pipes in gui
endif

"
" Misc options
"
set listchars=tab:▹▹,trail:·,extends:▸,precedes:◂,eol:↵,nbsp:▬
set nofoldenable                        " disable folding
set textwidth=90                        " line length limit
set novisualbell                        " disable system blinking
set autoindent                          " enable simple indentation
set linebreak                           " wrap words, not letters
set nowrap                              " disable wrapping
set nolist                              " hide non-printable symbols
set wildmode=longest,list,full          " complete as much as possible, then iterate
set wildmenu                            " enable wild menu

"
" Autocommands
"
" Restore cursor position
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
" Remove trailing spaces
autocmd BufWritePre * exe('%s/\s\+$//e')

"
" Load plugins
"
call pathogen#incubate()
call pathogen#helptags()

filetype plugin indent on               " enable file types auto detection

"
" Enable syntax highlight
"
if &t_Co >= 256 || has("gui_running")
    colorscheme wombat256mod            " set colortheme
    syntax on                           " enable syntax highlight
    let g:load_doxygen_syntax=1         " enable doxygen
endif
