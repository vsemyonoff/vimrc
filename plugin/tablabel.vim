if exists("+guioptions")
    set go-=e
endif
if exists("+showtabline")
    function MyTabLine()
        let s = ''
        let t = tabpagenr()
        let i = 1
        while i <= tabpagenr('$')
            let buflist = tabpagebuflist(i)
            let winnr = tabpagewinnr(i)
            let s .= '%' . i . 'T'
            let s .= (i == t ? '%1*' : '%2*')
            let s .= '[' . i . ' '
            let s .= (i == t ? '%1*' : '%2*')
            let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
            let file = bufname(buflist[winnr - 1])
            let file = fnamemodify(file, ':p:t')
            if file == ''
                let file = 'noname'
            endif
            let s .= file
            let s .= ']'
            let i = i + 1
        endwhile
        let s .= '%T%#TabLineFill#%='
        let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
        return s
    endfunction
    set stal=2
    set tabline=%!MyTabLine()
    "   map     <F10>    :tabnext<CR>
    "   map!    <F10>    <C-O>:tabnext<CR>
    "   map     <S-F10>  :tabprev<CR>
    "   map!    <S-F10>  <C-O>:tabprev<CR>
endif
