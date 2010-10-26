" highlight trailing spaces
au BufNewFile,BufRead * let b:mtrailingws=matchadd('ErrorMsg', '\s\+$', -1)
" highlight any tabs
au BufNewFile,BufRead * let b:mtabs=matchadd('ErrorMsg', '\t', -1)
" disable matches in help buffers
au BufEnter,FileType help call clearmatches()
" cleanup trailing spaces before saving file
au BufWritePre * exe('%s/\s\+$//e')
