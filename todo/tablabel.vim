function! GuiTabLabel()
    let label = '['.tabpagenr()
    " is page modified?
    let buflist = tabpagebuflist(v:lnum)
    for bufnr in buflist
        if getbufvar(bufnr, '&modified')
            let label .= '*'
            break
        endif
    endfor
    " count number of open windows in the tab
    let wincount = tabpagewinnr(v:lnum, '$')
    if wincount > 1
        let label .= ', '.wincount
    endif
    let label .= '] '

    " add the file name without path information
    let n = bufname(buflist[tabpagewinnr(v:lnum) - 1])
    let name = fnamemodify(n, ':t')
    if name == ''
        let name = 'noname'
    endif
    let label .= name

    return label
endfunction

set guitablabel=%{GuiTabLabel()}
