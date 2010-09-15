" windows-like behavior
behave mswin
source $VIMRUNTIME/mswin.vim

" Page Up/Down better behavior
noremap     <pageup>    <c-u><c-u>
vnoremap    <pageup>    <c-c><c-u><c-o><c-u>
inoremap    <pageup>    <c-o><c-u><c-o><c-u>
noremap     <pagedown>  <c-d><c-d>
vnoremap    <pagedown>  <c-c><c-d><c-o><c-d>
inoremap    <pagedown>  <c-o><c-d><c-o><c-d>
