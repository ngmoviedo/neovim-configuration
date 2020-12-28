"Plugins
source ~/.config/nvim/vim-plug/plugins.vim

" Settings
source ~/.config/nvim/settings/basic.vim
source ~/.config/nvim/settings/clipboard.vim
source ~/.config/nvim/settings/indent.vim
source ~/.config/nvim/settings/spelling.vim

"Theme (colorscheme and font)
source ~/.config/nvim/theme/colorscheme.vim
source ~/.config/nvim/theme/font.vim

" Plugin configuration
source ~/.config/nvim/plugin-config/coc/coc.vim
source ~/.config/nvim/plugin-config/ale.vim
source ~/.config/nvim/plugin-config/numbertoggle.vim
source ~/.config/nvim/plugin-config/over.vim
source ~/.config/nvim/plugin-config/netrw.vim
source ~/.config/nvim/plugin-config/rnvimr.vim
source ~/.config/nvim/plugin-config/floaterm.vim
source ~/.config/nvim/plugin-config/easymotion.vim
source ~/.config/nvim/plugin-config/airline.vim
source ~/.config/nvim/plugin-config/goyo.vim
source ~/.config/nvim/plugin-config/scrollbar.vim
" lua plugins
lua require('plugin-config.colorizer')
