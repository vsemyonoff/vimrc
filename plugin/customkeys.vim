" Next window
noremap     <c-tab>     <c-w>w
vnoremap    <c-tab>     <c-c><c-w>w
inoremap    <c-tab>     <c-o><c-w>w

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

" Load
"noremap     <c-o>       :browse e<cr>
"vnoremap    <c-o>       <c-c>:browse e<cr>
"inoremap    <c-o>       <c-o>:browse e<cr>

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

" Command prompt
inoremap    <m-x>       <c-o>:

" Find/next match
inoremap    <f3>        <c-o>:set hlsearch<cr><c-o>n
inoremap    <m-f3>      <c-o>:set hlsearch!<cr>
inoremap    <c-f>       <c-o>/

" Delete whole word
inoremap    <c-bs>      <c-w>

" Parens completion
imap        {           {}<left>
imap        [           []<left>
imap        (           ()<left>

" Shift selection by </>
vmap < <gv
vmap > >gv
