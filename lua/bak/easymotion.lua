-- Disable default mappings
vim.g.EasyMotion_do_mapping = 0

-- Jump to anywhere you want with minimal keystrokes, with just one key binding.
-- `s{char}{char}{label}`
local map = vim.api.nvim_set_keymap
map('n', 's', '<Plug>(easymotion-overwin-f2)', {})

-- Directions
vim.g.EasyMotion_startofline = 0 -- keep cursor column when JK motion
map('', '<Space>l', '<Plug>(easymotion-lineforward)', {})
map('', '<Space>j', '<Plug>(easymotion-j)', {})
map('', '<Space>k', '<Plug>(easymotion-k)', {})
map('', '<Space>h', '<Plug>(easymotion-linebackward)', {})

-- Move to word
map('', '<Space>w', '<Plug>(easymotion-bd-w)', {})
map('n', '<Space>w', '<Plug>(easymotion-overwin-w)', {})

-- Smartcase
vim.g.EasyMotion_smartcase = 1

-- Multiple character searches
map('', '/', '<Plug>(easymotion-sn)', {})
map('o', '/', '<Plug>(easymotion-tn)', {})

-- These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.-- Without these mappings, `n` & `N` works fine. (These mappings just provide
-- different highlight method and have some other features )

map('', 'n', '<Plug>(easymotion-next)', {})
map('', 'N', '<Plug>(easymotion-prev)', {})
