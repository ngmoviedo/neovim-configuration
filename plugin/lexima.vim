" NOTE: Order is important. You can't lazy loading lexima.vim.
let g:lexima_no_default_rules = v:true
call lexima#set_default_rules()

" Don't close before word
call lexima#add_rule({'at': '\%#\w', 'char': '(', 'input': '('})
call lexima#add_rule({'at': '\%#\w', 'char': '[', 'input': '['})
call lexima#add_rule({'at': '\%#\w', 'char': '{', 'input': '{'})

" LaTeX
" Equation and centered equation
call lexima#add_rule({'char': '$', 'input_after': '$', 'filetype': 'tex'})
call lexima#add_rule({'char': '$', 'at': '\%#\$\$', 'leave': 2, 'filetype': 'tex'})
call lexima#add_rule({'char': '<BS>', 'at': '\$\%#\$', 'delete': 1, 'filetype': 'tex'})

" Adjustable brackets and parentheses
call lexima#add_rule({'char': '\left(', 'input_after': '\right)', 'filetype': 'tex'})
call lexima#add_rule({'char': '\(', 'input': '\left(', 'input_after': '\right)', 'filetype': 'tex'})
call lexima#add_rule({'char': '<BS>', 'at': '\\left(\%#\\right)', 'input': '<BS><BS><BS><BS><BS><BS><Del><Del><Del><Del><Del><Del><Del>', 'filetype': 'tex'})

call lexima#add_rule({'char': '\left[', 'input_after': '\right]', 'filetype': 'tex'})
call lexima#add_rule({'char': '\[', 'input': '\left[', 'input_after': '\right]', 'filetype': 'tex'})
call lexima#add_rule({'char': '<BS>', 'at': '\\left\[\%#\\right\]', 'input': '<BS><BS><BS><BS><BS><BS><Del><Del><Del><Del><Del><Del><Del>', 'filetype': 'tex'})

call lexima#add_rule({'char': '\left\{', 'input_after': '\right\}', 'filetype': 'tex'})
call lexima#add_rule({'char': '\{', 'input': '\left\{', 'input_after': '\right\}', 'filetype': 'tex'})
call lexima#add_rule({'char': '<BS>', 'at': '\\left\\{\%#\\right\\}', 'input': '<BS><BS><BS><BS><BS><BS><BS><Del><Del><Del><Del><Del><Del><Del><Del>', 'filetype': 'tex'})

" Scalar product
call lexima#add_rule({'char': '\langle', 'input_after': '\rangle', 'filetype': 'tex'})
call lexima#add_rule({'char': '\<', 'input': '\langle', 'input_after': '\rangle', 'filetype': 'tex'})
call lexima#add_rule({'char': '<BS>', 'at': '\\langle\%#\\rangle', 'input': '<BS><BS><BS><BS><BS><BS><BS><Del><Del><Del><Del><Del><Del><Del>', 'filetype': 'tex'})

call lexima#add_rule({'char': '\left\langle', 'input_after': '\right\rangle', 'filetype': 'tex'})
call lexima#add_rule({'char': '<BS>', 'at': '\\left\\langle\%#\\right\\rangle', 'input': '<BS><BS><BS><BS><BS><BS><BS><BS><BS><BS><BS><BS><Del><Del><Del><Del><Del><Del><Del><Del><Del><Del><Del><Del><Del>', 'filetype': 'tex'})

" Pandoc
call lexima#add_rule({'char': '*', 'input_after': '*', 'filtype': 'pandoc'})
call lexima#add_rule({'char': '*', 'at': '\%#\*', 'leave': 1, 'filetype': 'pandoc'})
call lexima#add_rule({'char': '<BS>', 'at': '\*\%#\*', 'delete': 1, 'filetype': 'pandoc'})
