-- Substitutions
vim.api.nvim_set_keymap('n', '<c-s>', ':%s/', { noremap = true })

-- Built-in terminal
vim.cmd('command Vterm :vsplit | :terminal')
vim.cmd('command Hterm :split | :terminal')