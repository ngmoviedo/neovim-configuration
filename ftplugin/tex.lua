-- Dictionary and spell checking
vim.cmd('setlocal spell')
vim.api.nvim_buf_set_option(0, 'spelllang', 'es')

-- Concealment
vim.g.tex_superscripts = "[0-9a-zA-W.,:;+-<>/()=]"
vim.g.tex_subscripts = "[0-9aehijklmnoprstuvx,+-/().]"
vim.g.tex_conceal_frac = 1
vim.api.nvim_win_set_option(0, 'conceallevel', 2)
vim.g.tex_conceal = 'abdmg'
-- Only in normal mode
vim.api.nvim_exec([[
augroup conceal
    autocmd!
	autocmd InsertEnter *.tex set conceallevel=0
	autocmd InsertLeave *.tex set conceallevel=2
augroup END
]],false)
