-- Plugins
-- vim.cmd 'source ~/.config/nvim/vim-plug/plugins.vim'
require('plugins')

-- Settings
require('settings.basic')
require('settings.clipboard')
require('settings.indent')
-- vim.cmd 'source ~/.config/nvim/settings/spelling.vim' -- Not necessary with treesitter

-- Custom commands
vim.cmd 'source ~/.config/nvim/commands/terminal.vim' -- Makes sense as vim script
require('commands.substitutions')

-- Theme (colorscheme and font)
require('theme.colorscheme')

-- Plugin configuration
require('plugin-config.coc.coc')
require('plugin-config/numbertoggle')
require('plugin-config.netrw')
require('plugin-config.floaterm')
require('plugin-config.easymotion')
require('plugin-config.airline')
require('plugin-config.goyo')
require('plugin-config.treesitter')

