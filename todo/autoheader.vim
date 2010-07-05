autocmd bufnewfile * so /home/svlad/header.txt
autocmd bufnewfile * exe "1," . 10 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile * exe "1," . 10 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre * exe "normal ma"
autocmd Bufwritepre,filewritepre * exe "1," . 10 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd bufwritepost,filewritepost * exe "normal `a"
