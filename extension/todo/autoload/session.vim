if !exists("*session#restore")
    function session#restore()
        let l:session = fnamemodify(".", ":p") . g:SessionFile
        if filereadable(l:session)
            let g:SessionFile = l:session
        else
            let g:SessionFile = fnamemodify("~", ":p") . g:SessionFile
            if !filereadable(g:SessionFile)
                return
            endif
        endif
        unlet l:session

        " Do not restore sesion if was supplied command line args
        if argc() != 0
            return
        endif

        " Restore session
        exe "source " . g:SessionFile

        " Remove session file
        if has("win32")
            let l:rmcmd = "del"
        else
            let l:rmcmd = "rm"
        endif
        if filewritable(fnamemodify(g:SessionFile, ":p:h"))
            call system(l:rmcmd . ' "' . g:SessionFile . '"')
        endif
    endfunction
endif

if !exists("*session#store")
    function session#store()
        if filewritable(fnamemodify(g:SessionFile, ":p:h"))
            exe "mksession! " . g:SessionFile
        endif
    endfunction
endif
