set wildmenu
set wcm=<tab>

" Change encoding
noremap     <f8>                :emenu Encoding.<tab>
vnoremap    <f8>                <c-c>:emenu Encoding.<tab>
inoremap    <f8>                <c-o>:emenu Encoding.<tab>

noremenu    Encoding.UTF-8      :e ++enc=utf-8<cr>
noremenu    Encoding.KOI8-R     :e ++enc=koi8-r<cr>
noremenu    Encoding.CP1251     :e ++enc=cp1251<cr>
noremenu    Encoding.CP866      :e ++enc=cp866<cr>

vnoremenu   Encoding.UTF-8      <C-C>:e ++enc=utf-8<cr>
vnoremenu   Encoding.KOI8-R     <C-C>:e ++enc=koi8-r<cr>
vnoremenu   Encoding.CP1251     <C-C>:e ++enc=cp1251<cr>
vnoremenu   Encoding.CP866      <C-C>:e ++enc=cp866<cr>

inoremenu   Encoding.UTF-8      <C-O>:e ++enc=utf-8<cr>
inoremenu   Encoding.KOI8-R     <C-O>:e ++enc=koi8-r<cr>
inoremenu   Encoding.CP1251     <C-O>:e ++enc=cp1251<cr>
inoremenu   Encoding.CP866      <C-O>:e ++enc=cp866<cr>
