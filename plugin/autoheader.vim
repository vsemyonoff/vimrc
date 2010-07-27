au! BufNewFile * silent call autoheader#newfile()
au! BufWritePre,FileWritePre * silent call autoheader#writefile()
