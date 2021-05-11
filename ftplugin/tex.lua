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

--- Vimtex configuration
-- TeX flavor
vim.g.tex_flavor = 'latex'

-- PDF viewer
vim.g.vimtex_view_method = 'zathura'

-- TOC viewer
vim.api.nvim_set_keymap('', 'º', ':VimtexTocToggle <CR>', {noremap = true, silent = true})

-- Documentation
vim.api.nvim_set_keymap('', 'K', ':VimtexDocPackage<CR>', {noremap = true, silent = true})

-- Keymaps
vim.api.nvim_set_keymap('n', '<F4>', ':VimtexView <CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<F5>', ':VimtexCompile <CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<F6>', ':VimtexErrors <CR>', {noremap = true, silent = true})
