let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_global_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_identifier_candidate_chars = 4

nnoremap <leader>pg :YcmCompleter GoToDefinitionElseDeclaration<CR>
