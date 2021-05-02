-- TeX flavor
vim.g.tex_flavor = 'latex'

-- PDF viewer
vim.g.vimtex_view_method = 'zathura'

-- TOC viewer
vim.api.nvim_buf_set_keymap('', 'º', ':VimtexTocToggle <CR>', {noremap = true, silent = true, expr = true})

-- Documentation
vim.api.nvim_buf_set_keymap('', 'K', '<Plug>(vimtex-doc-package)', {noremap = true, silent = true, expr = true})

-- Keymaps
vim.api.nvim_buf_set_keymap('n', '<F4>', '<plug>(vimtex-view)', {noremap = true, silent = true, expr = true})
vim.api.nvim_buf_set_keymap('n', '<F5>', '<plug>(vimtex-compile)', {noremap = true, silent = true, expr = true})
vim.api.nvim_buf_set_keymap('n', '<F6>', '<plug>(vimtex-errors)', {noremap = true, silent = true, expr = true})
