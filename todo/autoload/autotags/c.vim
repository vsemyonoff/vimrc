if !exists("*autotags#c#update")
    function autotags#c#update()
        call autotags#cpp#update()
    endfunction
endif

if !exists("*autotags#c#generate")
    function autotags#c#generate()
        call autotags#c#update()
    endfunction
endif
