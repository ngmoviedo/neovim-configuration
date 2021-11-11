if !exists('g:vscode')
" Reset
let g:lexima_no_default_rules = 1
call lexima#set_default_rules()

" Don't close before word
call lexima#add_rule({'at': '\%#\w', 'char': '(', 'input': '('})
call lexima#add_rule({'at': '\%#\w', 'char': '[', 'input': '['})
call lexima#add_rule({'at': '\%#\w', 'char': '{', 'input': '{'})

" LaTeX
" Equation and centered equation
call lexima#add_rule({'char': '$', 'input_after': '$', 'filetype': ['tex', 'pandoc']})
call lexima#add_rule({'char': '$', 'at': '\%#\$\$', 'leave': 2, 'filetype': ['tex', 'pandoc']})
call lexima#add_rule({'char': '$', 'at': '\w\%#\$', 'leave': 1, 'filetype': ['tex', 'pandoc']})
call lexima#add_rule({'char': '<BS>', 'at': '\$\%#\$', 'delete': 1, 'filetype': ['tex', 'pandoc']})

" Adjustable brackets and parentheses
call lexima#add_rule({'char': '\(', 'input': '\left(', 'input_after': '\right)', 'filetype': ['tex', 'pandoc']})
call lexima#add_rule({'char': ')', 'at': '\%#\\right)', 'input': '<Right><Right><Right><Right><Right><Right><Right><Right>', 'filetype': ['tex', 'pandoc']})
call lexima#add_rule({'char': '<BS>', 'at': '\\left(\%#\\right)', 'input': '<BS><BS><BS><BS><BS><BS>', 'delete': 7, 'filetype': ['tex', 'pandoc']})

call lexima#add_rule({'char': '\[', 'input': '\left[', 'input_after': '\right]', 'filetype': ['tex', 'pandoc']})
call lexima#add_rule({'char': ']', 'at': '\%#\\right\]', 'input': '<Right><Right><Right><Right><Right><Right><Right><Right>', 'filetype': ['tex', 'pandoc']})
call lexima#add_rule({'char': '<BS>', 'at': '\\left\[\%#\\right\]', 'input': '<BS><BS><BS><BS><BS><BS><BS>',  'delete': 8, 'filetype': ['tex', 'pandoc']})

call lexima#add_rule({'char': '\{', 'except': '\\left\%#', 'input': '\left\{', 'input_after': '\right\}', 'filetype': ['tex', 'pandoc']})
call lexima#add_rule({'char': '}', 'at': '\%#\\right\\}', 'input': '<Right><Right><Right><Right><Right><Right><Right><Right><Right>', 'filetype': ['tex', 'pandoc']})
call lexima#add_rule({'char': '<BS>', 'at': '\\left\\{\%#\\right\\}', 'input': '<BS><BS><BS><BS><BS><BS><BS>', 'delete': 8, 'filetype': ['tex', 'pandoc']})

" Scalar product
call lexima#add_rule({'char': '\<', 'input': '\langle', 'input_after': '\rangle', 'filetype': ['tex', 'pandoc']})
call lexima#add_rule({'char': '<BS>', 'at': '\\langle\%#\\rangle', 'input': '<BS><BS><BS><BS><BS><BS><BS>', 'delete': 7, 'filetype': ['tex', 'pandoc']})

call lexima#add_rule({'char': '\l<', 'input':'\left\langle', 'input_after': '\right\rangle', 'filetype': ['tex', 'pandoc']})
call lexima#add_rule({'char': '<BS>', 'at': '\\left\\langle\%#\\right\\rangle', 'input': '<BS><BS><BS><BS><BS><BS><BS><BS>', 'delete': 13, 'filetype': ['tex', 'pandoc']})

" Norm
call lexima#add_rule({'char': '\<Bar>', 'input_after': '\<Bar>', 'filetype': ['tex', 'pandoc']})
call lexima#add_rule({'char': '<BS>', 'at': '\\.\%#\\.', 'input': '<BS><BS>', 'delete': 2, 'filetype': ['tex', 'pandoc']})
call lexima#add_rule({'char': '<Bar>', 'at': '\%#\\\|', 'leave': 2, 'filetype': ['tex', 'pandoc']})

"" Pandoc
call lexima#add_rule({'char': '*', 'input_after': '*', 'filetype': 'pandoc'})
call lexima#add_rule({'char': '*', 'at': '\%#\*', 'leave': 1, 'filetype': 'pandoc'})
call lexima#add_rule({'char': '<BS>', 'at': '\*\%#\*', 'delete': 1, 'filetype': 'pandoc'})
endif
