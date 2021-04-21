vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

-- Packages
-- Startup package
paq 'mhinz/vim-startify'

-- LaTeX edition
paq 'lervag/vimtex'

-- MATLAB edition
paq 'vim-scripts/MatlabFilesEdition'

-- Pandoc edition
paq 'vim-pandoc/vim-pandoc'
paq 'vim-pandoc/vim-pandoc-syntax'

-- Fish syntax highlighting
paq 'dag/vim-fish'

-- Autocompletion, linting and snippets
paq {'neoclide/coc.nvim', branch='release'}
paq 'rafcamlet/coc-nvim-lua'
paq 'honza/vim-snippets'
paq {'nvim-treesitter/nvim-treesitter', run=vim.fn['TSUpdate']}  -- We recommend updating the parsers on update

-- Pair matching and autoclose tools
paq 'tpope/vim-surround'
paq 'tmsvg/pear-tree'

-- Comment lines out
paq 'tpope/vim-commentary'

-- Repeat plugin actions
paq 'tpope/vim-repeat'

-- Comfortable motions, and line numering
paq 'easymotion/vim-easymotion'
paq 'jeffkreeftmeijer/vim-numbertoggle'

-- Distraction free edition
paq 'junegunn/goyo.vim'
paq 'TaDaa/vimade'

-- File manager (netrw) improvements
paq 'tpope/vim-vinegar'

-- Color schemes and status bar
paq {'dracula/vim', as='dracula'}
-- paq 'vim-airline/vim-airline'
-- paq 'vim-airline/vim-airline-themes'
paq 'hoob3rt/lualine.nvim'
paq 'kyazdani42/nvim-web-devicons'
paq 'ryanoasis/vim-devicons'
paq 'akinsho/nvim-bufferline.lua'

-- Floating terminal
paq 'voldikss/vim-floaterm'

-- Git integration
paq 'tpope/vim-fugitive'

-- Scrolling
paq 'psliwka/vim-smoothie'

