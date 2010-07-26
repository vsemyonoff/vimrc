if !exists("*autotags#setup")
    function autotags#setup()
        let b:tags_save = &tags
        let &tags = b:tags_file
    endfunction
endif

if !exists("*autotags#reset")
    function autotags#reset()
        let &tags = b:tags_save
        unlet b:tags_save
    endfunction
endif

if !exists("*autotags#register")
    function autotags#register()
        if !exists("#autotags#BufEnter#*." . b:file_type)
            augroup autotags
                exe "au BufEnter     *.".b:file_type." silent call autotags#setup()"
                exe "au BufLeave     *.".b:file_type." silent call autotags#reset()"
                exe "au BufWritePost *.".b:file_type." silent call autotags#update()"
            augroup END
        endif
    endfunction
endif

if !exists("*autotags#generate")
    function autotags#generate()
        call {"autotags#".b:file_type."#generate"}()
    endfunction
endif

if !exists("*autotags#update")
    function autotags#update()
        call {"autotags#".b:file_type."#update"}()
    endfunction
endif

if !exists("*autotags#init")
    function autotags#init()
        let b:file_type = expand("<amatch>")
        call autotags#register()
        let b:tags_file = "." . b:file_type . "tags"
        call autotags#setup()
        call autotags#generate()
    endfunction
endif
