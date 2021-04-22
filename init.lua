-- Plugins
vim.cmd('source ~/.config/nvim/plug.vim')

-- Main settings
require('settings.basic')
require('settings.clipboard')
require('settings.indent')
require('settings.netrw')
require('settings.terminal')
require('settings.treesitter')
require('settings.compe')
require('settings.lsp')

-- Custom mappings
require('mappings.terminal')
require('mappings.substitutions')
require('mappings.completion')
require('mappings.numbertoggle')
require('mappings.easymotion')

-- Theme (colorscheme and font)
require('theme.colorscheme')
require('theme.lualine')
require('theme.bufferline')

