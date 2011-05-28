"
" Completion source settings
"
set complete+=.             " current buffer
set complete+=k             " dictionary
set complete+=b             " other bufs
set complete+=t             " tags

"
" Completion options
"
set completeopt=menuone,menu,longest
let g:clang_auto_select = 1
let g:clang_complete_auto = 0
let g:clang_complete_copen = 0
let g:clang_hl_errors = 0
let g:clang_periodic_quickfix = 0
let g:clang_snippets = 1
let g:clang_snippets_engine = 'clang_complete'
let g:clang_exec = 'clang'
let g:clang_user_options = '|| exit 0'
let g:clang_use_library = has('python')
"let g:clang_library_path = ''
let g:clang_sort_algo = 'priority'
let g:clang_debug = 0
