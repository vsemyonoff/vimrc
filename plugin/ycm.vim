let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_global_conf.py'
let g:ycm_key_invoke_completion = '<TAB>'
let g:ycm_key_list_previous_completion = [ '<Up>' ]
let g:ycm_key_list_select_completion = [ '<Down>' ]
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_register_as_syntastic_checker = 1
let g:ycm_use_ultisnips_completer = 0

nnoremap <leader>pg :YcmCompleter GoToDefinitionElseDeclaration<CR>
