-- Indent guides
-- Vanilla
-- vim.api.nvim_set_option('listchars', 'tab:¦ ')
-- vim.api.nvim_set_option('list', true)

-- Using indent-blankline.nvim
vim.g.indent_blankline_filetype_exclude = {'help', 'startify'}
vim.g.indent_blankline_buftype_exclude = {'terminal'}
