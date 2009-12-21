" Set 'selection', 'selectmode', 'mousemodel' and 'keymodel' for MS-Windows
behave mswin

" Backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start whichwrap+=<,>,[,]

" Backspace in Visual mode deletes selection
vnoremap    <bs>        d

" Ctrl-X and Shift-Del are Cut
vnoremap    <c-x>       "+x
vnoremap    <s-del>     "+x

" Ctrl-C and Ctrl-Insert are Copy
vnoremap    <c-c>       "+y
vnoremap    <c-insert>  "+y

" Ctrl-V and Shift-Insert are Paste
map         <c-v>       "+gP
map         <s-insert>  "+gP

cmap        <c-v>       <c-r>+
cmap        <s-insert>  <c-r>+

" Uses the paste.vim autoload script for paste
exe 'inoremap <script> <c-v>' paste#paste_cmd['i']
exe 'vnoremap <script> <c-v>' paste#paste_cmd['v']
imap        <s-insert>  <c-v>
vmap        <s-insert>  <c-v>

" Ctrl-Z is Undo; not in cmdline though
noremap     <c-z>       u
inoremap    <c-z>       <c-o>u

" Ctrl-Y is Redo (although not repeat); not in cmdline though
noremap     <c-y>       <c-r>
inoremap    <c-y>       <c-o><c-r>

" Ctrl-A is Select all
noremap     <c-a>       gggH<c-o>G
inoremap    <c-a>       <c-o>gg<c-o>gH<c-o>G
cnoremap    <c-a>       <c-c>gggH<c-o>G
onoremap    <c-a>       <c-c>gggH<c-o>G
snoremap    <c-a>       <c-c>gggH<c-o>G
xnoremap    <c-a>       <c-c>ggVG

" Page Up/Down better behavior
noremap     <pageup>    <c-u><c-u>
vnoremap    <pageup>    <c-c><c-u><c-o><c-u>
inoremap    <pageup>    <c-o><c-u><c-o><c-u>
noremap     <pagedown>  <c-d><c-d>
vnoremap    <pagedown>  <c-c><c-d><c-o><c-d>
inoremap    <pagedown>  <c-o><c-d><c-o><c-d>
