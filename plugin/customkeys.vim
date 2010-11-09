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
noremap     <C-Z>       u
inoremap    <C-Z>       <C-O>u

" Redo
noremap     <S-C-Z>     <C-R>
inoremap    <S-C-Z>     <C-O><C-R>

" Select all
noremap     <C-A>       gggH<C-O>G
inoremap    <C-A>       <C-O>gg<C-O>gH<C-O>G
cnoremap    <C-A>       <C-C>gggH<C-O>G
onoremap    <C-A>       <C-C>gggH<C-O>G
snoremap    <C-A>       <C-C>gggH<C-O>G
xnoremap    <C-A>       <C-C>ggVG

" Maximize window
noremap     <f5>        <c-w>o
vnoremap    <f5>        <c-c><c-w>o
inoremap    <f5>        <c-o><c-w>o

" Save/Save As
noremap     <c-s>       :if expand("%") == ""<bar>browse w<bar>else<bar>update<bar>endif<cr>
vnoremap    <c-s>       <c-c>:if expand("%") == ""<bar>browse w<bar>else<bar>update<bar>endif<cr>
inoremap    <c-s>       <c-o>:if expand("%") == ""<bar>browse w<bar>else<bar>update<bar>endif<cr>
noremap     <m-s>       :browse saveas<cr>
vnoremap    <m-s>       <c-c>:browse saveas<cr>
inoremap    <m-s>       <c-o>:browse saveas<cr>

" Delete current buffer
noremap     <c-f4>      :confirm bd<cr>
vnoremap    <c-f4>      <c-c>:confirm bd<cr>
inoremap    <c-f4>      <c-o>:confirm bd<cr>

" Jump to previous/next buffer
noremap     <c-f5>      :bp<cr>
vnoremap    <c-f5>      <c-c>:bp<cr>
inoremap    <c-f5>      <c-o>:bp<cr>
noremap     <c-f6>      :bn<cr>
vnoremap    <c-f6>      <c-c>:bn<cr>
inoremap    <c-f6>      <c-o>:bn<cr>

" Jump to previous/next error
noremap     <f11>       :cprev<cr>
vnoremap    <f11>       <c-c>:cprev<cr>
inoremap    <f11>       <c-o>:cprev<cr>
noremap     <f12>       :cnext<cr>zvzz:cc<cr>
vnoremap    <f12>       <c-c>:cnext<cr>zvzz:cc<cr>
inoremap    <f12>       <c-o>:cnext<cr>zvzz:cc<cr>

" Show non-printable symbols
noremap     <m-f12>     :set list!<cr>
vnoremap    <m-f12>     <c-c>:set list!<cr>
inoremap    <m-f12>     <c-o>:set list!<cr>

" Jump to/from tag
noremap     <m-left>    <c-t>
vnoremap    <m-left>    <c-c><c-t>
inoremap    <m-left>    <c-o><c-t>
noremap     <m-right>   <c-]>
vnoremap    <m-right>   <c-c><c-]>
inoremap    <m-right>   <c-o><c-]>

" Completion menu
inoremap    <c-space>   <c-x><c-o>

" Find/next match
inoremap    <f3>        <c-o>:set hlsearch<cr><c-o>n
inoremap    <m-f3>      <c-o>:set hlsearch!<cr>
inoremap    <c-f>       <c-o>/

" Move to next/prev word
inoremap    <c-right>    <c-o>e<right>
inoremap    <c-left>     <c-o>b

" Delete whole word
inoremap    <c-bs>      <c-w>
cnoremap    <c-bs>      <c-w>

" Parens completion
imap        {           {}<left>
imap        [           []<left>
imap        (           ()<left>

" Shift selection by </>
vmap        <           <gv
vmap        >           >gv

" Indent with TAB
map         <Tab>       i<Tab><Esc>^

" Smart home key
noremap     <expr><home>      (col('.') == matchend(getline('.'), '^\s*')+1 ? '0'  : '^')
imap        <home>      <c-o><home>

" Page Up/Down better behavior
noremap     <pageup>    <c-u><c-u>
vnoremap    <pageup>    <c-c><c-u><c-o><c-u>
inoremap    <pageup>    <c-o><c-u><c-o><c-u>
noremap     <pagedown>  <c-d><c-d>
vnoremap    <pagedown>  <c-c><c-d><c-o><c-d>
inoremap    <pagedown>  <c-o><c-d><c-o><c-d>
