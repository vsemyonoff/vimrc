"
" Author: Vladyslav Semyonov <vsemyonoff@gmail.com>
"

"
" Compatibility options
"
set nocompatible            " use new style Vim options
"set virtualedit=all         " let me seek behind the EOL
"set insertmode              " use insert mode by default
set viminfo='100,<50,s10,h,n~/.cache/viminfo

"
" System options
"
filetype plugin indent on   " enable auto detection of file types
set shortmess=atI           " truncate Vim's messages and disable startup screen
set autoindent              " enable simple indentation for file types without plug-in
set showmode                " show current mode in the status line
set showcmd                 " do not show last command in the status line
set hidden                  " do not save buffer while switching to another

"
" Backup options
"
set backupdir=~/.vim/backup " backup files location
set directory=~/.vim/tmp    " swap files location
set backup                  " enable backup files

"
" Scrolling options
"
set scrolljump=1            " scroll by one line
set sidescroll=5            " side scrolling border
set scrolloff=5             " start text scrolling if 5 lines remains to top/bottom

"
" Encoding options
"
set fileencodings=default,koi8-r " list of encodings to auto detect
set encoding=utf-8          " default Vim encoding

"
" Spell checker options
"
set spelllang=en,ru         " spell languages list
"set spell                   " enable spelling

"
" Search options
"
set nohlsearch              " do not highlight search matches
set ignorecase              " ignore case while searching
set smartcase               " ignore case if 'pointer' and honor case if 'Pointer'
set incsearch               " do incremental searching
set wrapscan                " cyclic search
syntax on                   " enable syntax highlight by default


"
" Paren options
"
set matchpairs=(:),{:},[:],<:>  " Matching pair characters
set showmatch               " When a bracket is inserted, briefly jump to the matching one

"
" Folding options
"
"set foldmethod=syntax
set nofoldenable            " disable folding

"
" <Tab> options
"
set softtabstop=4           " emulate native tabs while deleting tabs
set shiftwidth=4            " shift size
set tabstop=4               " tab size
set expandtab               " use spaces instead of tabs
set smarttab                " emulate native tabs while indenting
set listchars=tab:▹▹,trail:·,extends:▸,precedes:◂,eol:↵

"
" UI options
"
colorscheme current         " color theme (use symlink 'current' in ~/.vim/colors)
set mouse=a                 " enable mouse
set mousehide               " hide the mouse when typing text
set ttyfast                 " more smooth screen redrawing
set wildmenu                " wnable wildmenu
"set wildmode=longest:full   " use longest match and show all matches
set lazyredraw              " do not redraw window
if has("gui")
    set guifont=Courier\ New\ 10
    set guioptions-=T       " hide tool bar
    set guicursor=a:blinkon0
endif
set statusline=%f\ %y\ format=%{&fileformat}\ encoding=%{&fileencoding}\ %r\ %3m%=%5l:%-5c\%10P
set laststatus=2            " always show status line
set cursorline              " highlight current line
set number                  " show line numbers

"
" Word completion dictionary
"
set complete+=.             " current buffer
set complete+=k             " dictionary
set complete+=b             " other bufs
set complete+=t             " tags

"
" Completion options
"
set completeopt=menu        " show menu
set completeopt+=longest    " use longest common partial match

"
" Misc options
"
set novisualbell            " disable system blinking
set linebreak               " wrap words, not letters
set nowrap                  " disable wrapping
