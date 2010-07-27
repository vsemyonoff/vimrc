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
set completeopt=menu        " show menu
set completeopt+=longest    " use longest common partial match

"
" Completion bindings
"
inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
