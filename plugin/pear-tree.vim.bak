" Smart rules
let g:pear_tree_smart_openers = 0
let g:pear_tree_smart_closers = 1
let g:pear_tree_smart_backspace = 1

" File specific rules
augroup latex_pairs
    autocmd!
    autocmd FileType tex,pandoc let b:pear_tree_pairs = {
                \ '(': {'closer': ')', 'not_at': ['\\']},
                \ '[': {'closer': ']', 'not_at': ['\\']},
                \ '{': {'closer': '}', 'not_at': ['\\']},
                \ '$': {'closer': '$'},
                \ '$$': {'closer': '$$'},
                \ '\\|': {'closer': '\\|'},
                \ '\\left(': {'closer': '\\right)'},
                \ '\\left[': {'closer': '\\right]'},
                \ '\\left\\{': {'closer': '\\right\\}'},
                \ '\\langle': {'closer': '\\rangle'},
                \ '\\left\\langle': {'closer': '\\right\\rangle'},
                \}
augroup END

augroup pandoc_pairs
    autocmd!
    autocmd FileType pandoc let b:pear_tree_pairs = {
                \ '*': {'closer': '\*'},
                \}
