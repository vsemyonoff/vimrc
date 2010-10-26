augroup Settings
    "load all settings after vim starts
    autocmd VimEnter * runtime! settings/**/*.vim
augroup END

