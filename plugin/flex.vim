autocmd BufNewFile,BufRead *.as    set filetype=actionscript
autocmd BufNewFile,BufRead *.mxml  set filetype=mxml

autocmd BufNewFile,BufRead *.mxml,*.as :inoremap <c-b> <c-o>:!bash ~/bin/fcshcmp.sh %:p<cr>
autocmd BufNewFile,BufRead *.mxml,*.as :inoremap <c-cr> <c-o>:!bash ~/bin/fcshcmp.sh %:p run<cr>
