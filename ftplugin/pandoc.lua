-- Spelling
-- vim.api.nvim_win_set_option(0, 'spell', true)
vim.cmd('setlocal spell')
vim.g['pandoc#spell#default_langs'] = "es" -- Not working in lua
vim.api.nvim_buf_set_option(0, 'spelllang', 'es') -- Needs this instead
