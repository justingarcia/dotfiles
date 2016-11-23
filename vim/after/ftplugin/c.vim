setlocal shiftwidth=4
setlocal expandtab
setlocal smarttab

setlocal formatoptions=crawno

" Don't indent class scope declarations
setlocal cindent
setlocal cino=g0

" No auto comment for C++ style comments
setlocal comments-=://
setlocal comments+=f://

" Spacebar as jump key
"function! Jump()
"    let lin = getline('.')
"    let len = len(lin)
"    let fir = matchstr(lin, '\%1c.')
"    let las = matchstr(lin, '\%' . len . 'c.')
"    if (las == ';' || las == '}' || las == '>' || len == 0)
"        return 0
"    endif
"    return 1
"endfunction
"inoremap <expr> <Space> Jump() ? " " : "\<CR>"
