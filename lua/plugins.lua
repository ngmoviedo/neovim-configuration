return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Startup page
    use 'mhinz/vim-startify'

    -- LaTeX edition
    use {'lervag/vimtex', ft = {'tex', 'latex'}}

    -- MATLAB edition
    use {
        'ebranlard/vim-matlab-behave',
        requires = {{'vim-scripts/MatlabFilesEdition', opt = true}},
        ft = {'matlab'}
    }

    -- Pandoc edition
    use {
        'vim-pandoc/vim-pandoc',
        requires = {{'vim-pandoc/vim-pandoc-syntax', opt = true}},
        ft = {'pandoc','markdown'}
    }

    -- Fish syntax highlighting
    use {'dag/vim-fish', ft = {'fish'}}

    -- Autocompletion, lsp, snippets, treesitter...
    use {
        'neovim/nvim-lspconfig',
        config = [[require('config.lsp')]],
        require = {
            'onsails/lspkind-nvim', -- icons for lsp classess
            opt = true,
            config = function() require('lspkind').init() end
        }
    }

    use {
        'hrsh7th/nvim-compe',
        requires = {
		'SirVer/ultisnips', 'honza/vim-snippets',
		'windwp/nvim-autopairs'
	    },
        config = [[require('config.autocompletion')]]
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate', -- Updates the parsers on upgrade
        config = [[require('config.treesitter')]]
    }

    -- Indent guides
    use {
        'lukas-reineke/indent-blankline.nvim',
        branch = 'lua',
        config = [[require('config.indent')]]
    }

    -- Autoclose and pairs matching
    use 'tpope/vim-surround'

    -- Comments line out
    use 'tpope/vim-commentary'

    -- Repeat plugin actions
    use 'tpope/vim-repeat'

    -- Comfortable motions
    use {
        'justinmk/vim-sneak',
	    config = [[require('config.sneak')]]
    }

    -- Line numbering
    use {
        'jeffkreeftmeijer/vim-numbertoggle',
        config = [[require('config.numbertoggle')]]
    }

    -- Fade inactive buffers
    use 'TaDaa/vimade'

    -- Netrw improvements
    use {
        'tpope/vim-vinegar',
        config = [[require('config.netrw')]]
    }

    -- Status and buffer line
    use {
        'hoob3rt/lualine.nvim',
        requires = {{'kyazdani42/nvim-web-devicons', opt = true}},
        config = [[require('config.lualine')]]
    }
    use {
        'akinsho/nvim-bufferline.lua',
        requires = {{'kyazdani42/nvim-web-devicons'}, opt = true},
        config = [[require('config.bufferline')]]
    }

    -- Color schemes
    use {'dracula/vim', as = 'dracula'}

    -- Floating terminal
    use {
        'voldikss/vim-floaterm',
        config = [[require('config.floaterm')]]
    }

    -- Git integration
    use 'tpope/vim-fugitive'

    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = function() require('gitsigns').setup() end
    }

    -- Smooth scrolling
    use {
        'karb94/neoscroll.nvim',
        config = function() require('neoscroll').setup() end
    }

end)
