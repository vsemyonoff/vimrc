if exists('did_load_filetypes')
  finish
endif
augroup filetypedetect
  autocmd! BufRead,BufNewFile *.tpp setfiletype cpp
augroup END
