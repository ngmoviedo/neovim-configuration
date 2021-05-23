return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Startup page
    use 'mhinz/vim-startify'

    -- LaTeX edition
    use {'lervag/vimtex', ft = {'tex', 'latex'}}

    -- MATLAB edition
    use {'ebranlard/vim-matlab-behave', ft = {'matlab'}}

    -- Pandoc edition
    use {
        {'vim-pandoc/vim-pandoc', ft = {'pandoc', 'markdown'}},
        {'vim-pandoc/vim-pandoc-syntax', ft = {'pandoc', 'markdown'}}
    }

    -- Fish syntax highlighting
    use {'dag/vim-fish', ft = {'fish', 'conf'}} -- neovim detects files with fish extension as conf files

    -- LSP
    use {
        'neovim/nvim-lspconfig',
        {
            'onsails/lspkind-nvim', -- LSP icons
            config = function() require('lspkind').init() end
        }
    }

    -- Autocompletion engine
    use {'hrsh7th/nvim-compe'}

    -- Snippets
    use {'SirVer/ultisnips', requires = {'honza/vim-snippets'}}

    -- Autopairs
    use {{'cohama/lexima.vim', disable = false}, 'tpope/vim-surround'}

    -- Treesitter
    use {
        {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}, -- Updates the parsers on upgrade
        'p00f/nvim-ts-rainbow' -- rainbow brackets and parentheses
    }

    -- Indent guides
    use {'lukas-reineke/indent-blankline.nvim', branch = 'lua'} -- will become the default branch once neovim 0.5 gets released

    -- Comments line out
    use 'tpope/vim-commentary'

    -- Repeat plugin actions
    use 'tpope/vim-repeat'

    -- Comfortable motions
    use 'justinmk/vim-sneak'

    -- Line numbering
    use 'jeffkreeftmeijer/vim-numbertoggle'

    -- Fade inactive buffers
    use {'TaDaa/vimade', disable = true}
    use 'sunjon/Shade.nvim'

    -- Netrw improvements
    use 'tpope/vim-vinegar'

    -- Status and buffer line
    use {'hoob3rt/lualine.nvim', 'akinsho/nvim-bufferline.lua'}

    -- Color schemes
    use {'dracula/vim', as = 'dracula'}

    -- Devicons
    use 'kyazdani42/nvim-web-devicons'

    -- Floating terminal
    use 'voldikss/vim-floaterm'

    -- Git integration
    use 'tpope/vim-fugitive'

    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = function() require('gitsigns').setup() end
    }

    -- FZF integrations
    use {'junegunn/fzf', 'junegunn/fzf.vim'}

    -- Colorizer
    use {
        'norcalli/nvim-colorizer.lua',
        config = function() require('colorizer').setup() end
    }

    -- Smooth scrolling
    use 'psliwka/vim-smoothie'

    -- Lua utilities
    use 'tjdevries/astronauta.nvim' -- allows autoloading files under lua/plugin and writting ftplugin files on lua

end)
