if !exists("*autotags#cpp#update")
    function autotags#cpp#update()
        exe "!tags='' && for file in $(make depends); do tags+=$(cat $file | sed -r 's/.+?://'); done && tags=$(echo $tags | sed 's/\\\\//g' | sed 's/ /\\n/g' | sort -u) && ctags --c++-kinds=+p --fields=+iaS --extra=+q -f " . b:tags_file . " $tags"
    endfunction
endif

if !exists("*autotags#cpp#generate")
    function autotags#cpp#generate()
        call autotags#cpp#update()
    endfunction
endif
