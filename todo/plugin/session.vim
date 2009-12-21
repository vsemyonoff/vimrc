if exists("g:session_started")
    finish
endif
let g:session_started = 1

if !exists("g:SessionFile")
    let g:SessionFile = ".session"
else
    let g:SessionFile = expand(g:SessionFile, ":t")
endif

augroup Session
    au!
    if has("gui")
        au GUIEnter         *   silent call session#restore()
    else
        au VimEnter         *   silent call session#restore()
    endif
    au VimLeavePre      *   silent call session#store()
augroup END
