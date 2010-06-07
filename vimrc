"
" Author: Vladyslav Semyonov <vsemyonoff@gmail.com>
"

"
" System options
"
set nocompatible            " use new style Vim options
set viminfo+=n$XDG_CACHE_HOME/viminfo " do not garbage home folder
filetype plugin indent on   " enable auto detection of file types
set shortmess=atI           " truncate Vim's messages and disable startup screen
set noshowcmd               " do not show last command in the status line
set showmode                " show current mode in the status line
set hidden                  " do not save buffer while switching to another
syntax on                   " enable syntax highlight by default

"
" Backup options
"
set noswapfile              " disable swap files
set nobackup                " disable backup files

"
" Scrolling options
"
set scrolljump=1            " scroll by one line
set sidescroll=5            " side scrolling border
set scrolloff=5             " start text scrolling if 5 lines remains to top/bottom

"
" Encoding options
"
set encoding=utf-8          " default Vim encoding
set fileencodings=default,koi8-r " list of encodings to auto detect

"
" Spell checker options
"
set spelllang=en,ru         " spell languages list
set spell                   " enable spelling

"
" Search options
"
set nohlsearch              " do not highlight search matches
set ignorecase              " ignore case while searching
set smartcase               " ignore case if 'pointer' and honor case if 'Pointer'
set incsearch               " do incremental searching
set wrapscan                " cyclic search

"
" Paren options
"
set matchpairs=(:),{:},[:],<:>  " Matching pair characters
set showmatch               " When a bracket is inserted, briefly jump to the matching one

"
" <Tab> options
"
set softtabstop=4           " emulate native tabs while deleting tabs
set shiftwidth=4            " shift size
set tabstop=4               " tab size
set expandtab               " use spaces instead of tabs
set smarttab                " emulate native tabs while indenting

"
" UI options
"
set statusline=%f\ %y\ format=%{&fileformat}\ encoding=%{&fileencoding}\ %r\ %3m%=%5l:%-5c\%10P
if has("gui")
    set guifont=Courier\ New\ 10
    colorscheme wombat256   " color theme
    set guioptions-=T       " hide tool bar
    set guicursor=a:blinkon0 " disable cursor blinking
    set cursorline          " highlight current line
    set mousehide           " hide the mouse when typing text
    set noguipty            " external commands work through a pipe
    set mouse=a             " enable mouse
endif
set showtabline=2           " always show tab line
set laststatus=2            " always show status line
set cmdheight=2             " increase command line height
set lazyredraw              " less window redraws
set ttyfast                 " more smooth screen redrawing
set number                  " show line numbers

"
" Misc options
"
set listchars=tab:▹▹,trail:·,extends:▸,precedes:◂,eol:↵
set textwidth=120           " line length limit
set novisualbell            " disable system blinking
set linebreak               " wrap words, not letters
set nowrap                  " disable wrapping
set list                    " show non-printable symbols
