-- Indentation (4 spaces)
vim.api.nvim_buf_set_option(0, 'tabstop', 4) -- These are buffer-local options
vim.api.nvim_buf_set_option(0, 'shiftwidth', 4)
vim.api.nvim_buf_set_option(0, 'expandtab', true)

-- Using indent-blankline.nvim
vim.g.indent_blankline_filetype_exclude = {'help', 'startify', 'lspinfo'}
vim.g.indent_blankline_buftype_exclude = {'terminal'}
vim.g.indent_blankline_use_treesitter = {'v:true'}
vim.g.indent_blankline_show_current_context = 1
