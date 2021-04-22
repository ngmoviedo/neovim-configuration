-- Change line number style
vim.wo.number = true
vim.api.nvim_set_keymap('n', '<C-n>', ':set relativenumber!<cr>', { noremap = true, silent = true })
