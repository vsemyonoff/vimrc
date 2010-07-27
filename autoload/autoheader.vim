function! autoheader#staticinfo(count)
    exe "1," . a:count . "g/Creation date:$/s//Creation date: " . strftime("%Y.%m.%d %H:%M:%S")
    exe "1," . a:count . "g/Copyright ©$/s//Copyright © " . strftime("%Y") . " Vladyslav Semyonoff <vsemyonoff@gmail.com>"
endfunction

function! autoheader#dynamicinfo(count)
    exe "1," . a:count . "g/Last modified:.*/s/Last modified:.*/Last modified: " . strftime("%Y.%m.%d %H:%M:%S")
    exe "1," . a:count . "g/File:.*/s/File:.*/File: " . expand("%")
endfunction

function! autoheader#newfile()
    let s:autoheader = "/home/svlad/.vim/autoheader/" . expand("%:e")
    if filereadable(s:autoheader)
        exe "0:read " . s:autoheader
        call autoheader#staticinfo(line("$"))
        call autoheader#dynamicinfo(line("$"))
        exe "normal G"
    endif
endfunction

function! autoheader#writefile()
    let l:count = line("$")
    let l:header_size = 25
    exe "normal ma"
    if (l:count > l:header_size)
        call autoheader#staticinfo(l:header_size)
        call autoheader#dynamicinfo(l:header_size)
    else
        call autoheader#staticinfo(l:count)
        call autoheader#dynamicinfo(l:count)
    endif
    exe "normal `a"
endfunction