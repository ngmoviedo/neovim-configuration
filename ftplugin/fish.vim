" Set up :make to use fish for syntax checking.
autocmd Bufread *.fish compiler fish

" Set this to have long lines wrap inside comments.
setlocal textwidth=79

" Enable folding of block structures in fish.
setlocal foldmethod=expr
