-- Plugins
require('plugins')

-- Settings
require('settings.basic')
require('settings.clipboard')
require('settings.indent')
-- vim.cmd 'source ~/.config/nvim/settings/spelling.vim' -- Not necessary with treesitter

-- Custom commands
require('commands.terminal')
require('commands.substitutions')

-- Theme (colorscheme and font)
require('theme.colorscheme')

-- Plugin configuration
require('plugin-config.coc-settings')
require('plugin-config.coc-explorer')
require('plugin-config.numbertoggle')
require('plugin-config.netrw')
require('plugin-config.floaterm')
require('plugin-config.easymotion')
require('plugin-config.airline')
require('plugin-config.goyo')
require('plugin-config.treesitter')

