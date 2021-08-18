if vim.fn.exists('g:vscode')==0 then
local Terminal = require('toggleterm.terminal').Terminal

-- Floating terminal
local floatterm = Terminal:new({direction = 'float'})
function _Floatterm_toggle() floatterm:toggle() end

-- Horizontal terminal
local hterm = Terminal:new({direction = 'horizontal', size = 20})
function _Hterm_toggle() hterm:toggle() end

-- Vertical terminal
local vterm = Terminal:new({direction = 'vertical', size = vim.o.columns * 0.4})
function _Vterm_toggle() vterm:toggle() end

-- Window terminal
local winterm = Terminal:new({direction = 'window'})
function _Winterm_toggle() winterm:toggle() end

-- Mappings
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

map('n', '<F12>', '<cmd>lua _Floatterm_toggle()<CR>', opt)
map('t', '<F12>', '<cmd>lua _Floatterm_toggle()<CR>', opt)

map('n', '<F9>', '<cmd>lua _Hterm_toggle()<CR>', opt)
map('t', '<F9>', '<cmd>lua _Hterm_toggle()<CR>', opt)

map('n', '<F10>', '<cmd>lua _Vterm_toggle()<CR>', opt)
map('t', '<F10>', '<cmd>lua _Vterm_toggle()<CR>', opt)

map('n', '<F11>', '<cmd>lua _Winterm_toggle()<CR>', opt)
map('t', '<F11>', '<cmd>lua _Winterm_toggle()<CR>', opt)
end
