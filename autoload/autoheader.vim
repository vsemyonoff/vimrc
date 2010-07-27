function! autoheader#newfile()
    let s:autoheader = "/home/svlad/.vim/autoheader/" . expand("<afile>:e")
    if filereadable(s:autoheader)
        exe "0:read " . s:autoheader
        exe "%g/Creation Date.*/s//Creation Date: " . strftime("%Y.%m.%d %H:%M")
        exe "normal G"
    endif
endfunction

function! autoheader#writefile()
    let l:count = line("$")
    let l:header_size = 10
    exe "normal ma"
    if (l:count > l:header_size)
        exe "1," . l:header_size . "g/Last Modified.*/s//Last Modified: " . strftime("%Y.%m.%d %H:%M")
        exe "1," . l:header_size . "g/File Name.*/s//File Name: " . expand("%")
    else
        exe "1," . l:count . "g/Last Modified.*/s//Last Modified: " . strftime("%Y.%m.%d %H:%M")
        exe "1," . l:count . "g/File Name.*/s//File Name: " . expand("%")
    endif
    exe "normal `a"
endfunction
