" Spelling
let g:pandoc#spell#default_langs=["es"]
setlocal dictionary=/usr/share/dict/spanish

" Autoclose
let g:pear_tree_pairs = {
            \ '(': {'closer': ')', 'not_at':['\\']},
            \ '[': {'closer': ']', 'not_at':['\\']},
            \ '{': {'closer': '}', 'not_at':['\\']},
            \ "'": {'closer': "'"},
            \ '"': {'closer': '"'},
            \ '$': {'closer': '$'},
            \ '\*': {'closer': '\*'}
            \ }

