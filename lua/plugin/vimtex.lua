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
