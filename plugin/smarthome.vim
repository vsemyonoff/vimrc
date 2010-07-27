noremap     <expr><home>    (col('.') == matchend(getline('.'), '^\s*')+1 ? '0'  : '^')
imap        <home>          <c-o><home>
