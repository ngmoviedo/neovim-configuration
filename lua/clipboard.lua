-- Usual clipboard mappings
vim.api.nvim_set_keymap('i', '<C-v><ESC>', '"+pa', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-x>', '"+d', { noremap = true, silent = true })

-- Allows yanking and pasting to and from clipboard
vim.o.clipboard = 'unnamedplus'
