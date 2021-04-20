vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

-- Packages
-- Startup package
paq 'mhinz/vim-startify'

-- LaTeX edition
paq {'lervag/vimtex', opt=true}

-- MATLAB edition 
paq {'vim-scripts/MatlabFilesEdition', opt=true}

-- Pandoc edition
paq {'vim-pandoc/vim-pandoc', opt=true}
paq {'vim-pandoc/vim-pandoc-syntax', opt=true}

-- Fish syntax highlighting
paq {'dag/vim-fish', opt=true}

-- Autocompletion, linting and snippets
paq {'neoclide/coc.nvim', branch='release'}
paq {'rafcamlet/coc-nvim-lua', opt=true}
paq 'honza/vim-snippets'
paq {'nvim-treesitter/nvim-treesitter'}  -- We recommend updating the parsers on update

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
paq 'vim-airline/vim-airline'
paq 'vim-airline/vim-airline-themes'
paq 'ryanoasis/vim-devicons'

-- Floating terminal
paq 'voldikss/vim-floaterm'

-- Git integration
paq 'tpope/vim-fugitive'

-- Scrolling
paq 'psliwka/vim-smoothie'

