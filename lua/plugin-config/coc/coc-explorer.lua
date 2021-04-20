-- Keymaps
local map = vim.api.nvim_set_keymap
map('n', '<F1>', ':CocCommand explorer<CR>', { noremap = true, silent = true})
map('n', '<space>e', ':CocCommand explorer<CR>', { noremap = true, silent = true})

-- Close explorer if it's the only remaining window
vim.cmd(
[[
	autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
]]
)

