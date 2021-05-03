-- Label mode
vim.g['sneak#label'] = 1
-- Clever s
vim.g['sneak#s_next'] = 1
-- f and t (one character Sneak)
local map = vim.api.nvim_set_keymap
map('', 'f', '<Plug>Sneak_f', {})
map('', 'F', '<Plug>Sneak_F', {})
map('', 't', '<Plug>Sneak_t', {})
map('', 'T', '<Plug>Sneak_T', {})
