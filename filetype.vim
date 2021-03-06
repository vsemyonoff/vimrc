if exists('did_load_filetypes')
  finish
endif

augroup filetypedetect
  autocmd! BufNewFile,BufRead *.frag,*.vert,*.gp,*.fp,*.vp,*.glsl setf glsl
  autocmd! BufNewFile,BufRead *.prg,*.prj setf make
  autocmd! BufNewFile,BufRead *.mm setf cpp
augroup END
