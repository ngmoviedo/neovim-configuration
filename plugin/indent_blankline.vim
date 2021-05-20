" Disable for certain files and buffers
let g:indent_blankline_filetype_exclude = ['help', 'startify', 'lspinfo', 'packer']
let g:indent_blankline_bufetype_exclude = ['terminal']

" Treesitter and context
let g:indent_blankline_use_treesitter = v:true
let g:indent_blankline_show_current_context = 1
