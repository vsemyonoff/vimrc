" Use CTRL-Q to do what CTRL-V used to do
noremap     <C-Q>       <C-V>

" Cut
vnoremap    <C-X>       "+x

" Copy
vnoremap    <C-C>       "+y

" Paste line
map         <C-V>       "+gP
cmap        <C-V>       <C-R>+

" Paste blocks
exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

" Undo
noremap          <C-Z>    u
inoremap         <C-Z>    <C-O>u

" Redo
noremap          <C-Y>    <C-R>
inoremap         <C-Y>    <C-O><C-R>

" Select all
noremap          <C-A>    gggH<C-O>G
inoremap         <C-A>    <C-O>gg<C-O>gH<C-O>G
cnoremap         <C-A>    <C-C>gggH<C-O>G
onoremap         <C-A>    <C-C>gggH<C-O>G
snoremap         <C-A>    <C-C>gggH<C-O>G
xnoremap         <C-A>    <C-C>ggVG

" Maximize window
noremap           <F5>    <C-W>o
vnoremap          <F5>    <C-C><C-W>o
inoremap          <F5>    <C-O><C-W>o

" Save/Save As
noremap  <silent> <C-S>   :if expand("%") == ""<bar>browse w<bar>else<bar>update<bar>endif<CR>
vnoremap <silent> <C-S>   <C-C>:if expand("%") == ""<bar>browse w<bar>else<bar>update<bar>endif<CR>
inoremap <silent> <C-S>   <C-O>:if expand("%") == ""<bar>browse w<bar>else<bar>update<bar>endif<CR>
noremap  <silent> <M-S>   :browse saveas<CR>
vnoremap <silent> <M-S>   <C-C>:browse saveas<CR>
inoremap <silent> <M-S>   <C-O>:browse saveas<CR>

" Delete current buffer
noremap     <C-F4>      :confirm bd<CR>
vnoremap    <C-F4>      <C-C>:confirm bd<CR>
inoremap    <C-F4>      <C-O>:confirm bd<CR>

" Jump to previous/next buffer
noremap     <C-F5>      :bp<CR>
vnoremap    <C-F5>      <C-C>:bp<CR>
inoremap    <C-F5>      <C-O>:bp<CR>
noremap     <C-F6>      :bn<CR>
vnoremap    <C-F6>      <C-C>:bn<CR>
inoremap    <C-F6>      <C-O>:bn<CR>

" Jump to previous/next error
noremap     <F11>       :cprev<CR>
vnoremap    <F11>       <C-C>:cprev<CR>
inoremap    <F11>       <C-O>:cprev<CR>
noremap     <F12>       :cnext<CR>zvzz:cc<CR>
vnoremap    <F12>       <C-C>:cnext<CR>zvzz:cc<CR>
inoremap    <F12>       <C-O>:cnext<CR>zvzz:cc<CR>

" Show non-printable symbols
noremap     <M-F12>     :set list!<CR>
vnoremap    <M-F12>     <C-C>:set list!<CR>
inoremap    <M-F12>     <C-O>:set list!<CR>

" Jump to/from tag
noremap     <M-Left>    <C-T>
vnoremap    <M-Left>    <C-C><C-T>
inoremap    <M-Left>    <C-O><C-T>
noremap     <M-Right>   <c-]>
vnoremap    <M-Right>   <C-C><C-]>
inoremap    <M-Right>   <C-O><C-]>

" Completion menu
inoremap    <C-Space>   <C-X><C-O>

" Find/next match
inoremap    <F3>        <C-O>n
inoremap    <M-F3>      <C-O>:set hlsearch!<CR>

" Move to next/prev word
inoremap    <C-Right>    <C-O>e<Right>
inoremap    <C-Left>     <C-O>b

" Delete whole word
inoremap    <C-BS>      <C-W>
cnoremap    <C-BS>      <C-W>

" Parens completion
imap        {           {}<Left>
imap        [           []<Left>
imap        (           ()<Left>

" Shift selection by </>
vmap        <           <gv
vmap        >           >gv

" Indent with TAB
map         <Tab>       i<Tab><Esc>^

" Smart home key
noremap     <expr><Home>      (col('.') == matchend(getline('.'), '^\s*')+1 ? '0'  : '^')
imap        <Home>      <C-O><Home>

" Page Up/Down better behavior
noremap     <PageUp>    <C-U><C-U>
vnoremap    <PageUp>    <C-C><C-U><C-O><C-U>
inoremap    <PageUp>    <C-O><C-U><C-O><C-U>
noremap     <PageDown>  <C-D><C-D>
vnoremap    <PageDown>  <C-C><C-D><C-O><C-D>
inoremap    <PageDown>  <C-O><C-D><C-O><C-D>
