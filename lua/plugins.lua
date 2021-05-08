return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Startup page
    use {
	    'mhinz/vim-startify',
	    requires = {'kyazdani42/nvim-web-devicons'},
	    -- config = [[require('config.startify')]]
	}

    -- LaTeX edition
    use {
	    'lervag/vimtex',
	    ft = {'tex', 'latex'},
    }

    -- MATLAB edition
    use {
        'ebranlard/vim-matlab-behave',
        requires = {{'vim-scripts/MatlabFilesEdition', ft = {'matlab'}}},
        ft = {'matlab'},
    }

    -- Pandoc edition
    use {
        'vim-pandoc/vim-pandoc',
        requires = {{'vim-pandoc/vim-pandoc-syntax', ft = {'pandoc', 'markdown'}}},
        ft = {'pandoc','markdown'}
    }

    -- Fish syntax highlighting
    use {'dag/vim-fish', ft = {'fish', 'conf'}} -- neovim detects files with fish extension as config files

    -- Autocompletion, lsp, snippets, treesitter...
    use 'neovim/nvim-lspconfig'

    use {
	    'onsails/lspkind-nvim',
	    config = function() require('lspkind').init() end
	}

    use {
        'hrsh7th/nvim-compe',
        requires = {
		'SirVer/ultisnips', 'honza/vim-snippets',
	    },
    }

    use 'windwp/nvim-autopairs'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate', -- Updates the parsers on upgrade
    }

    -- Indent guides
    use {
        'lukas-reineke/indent-blankline.nvim',
        branch = 'lua',
    }

    -- Autoclose and pairs matching
    use 'tpope/vim-surround'

    -- Comments line out
    use 'tpope/vim-commentary'

    -- Repeat plugin actions
    use 'tpope/vim-repeat'

    -- Comfortable motions
    use 'justinmk/vim-sneak'

    -- Line numbering
    use 'jeffkreeftmeijer/vim-numbertoggle'

    -- Fade inactive buffers
    use 'TaDaa/vimade'

    -- Netrw improvements
    use 'tpope/vim-vinegar'

    -- Status and buffer line
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons'},
    }

    use {
        'akinsho/nvim-bufferline.lua',
        requires = {'kyazdani42/nvim-web-devicons'},
    }

    -- Color schemes
    use {'dracula/vim', as = 'dracula'}

    -- Floating terminal
    use 'voldikss/vim-floaterm'

    -- Git integration
    use 'tpope/vim-fugitive'

    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = function() require('gitsigns').setup() end
    }

    use 'junegunn/fzf'

    -- Smooth scrolling
    use {
        'karb94/neoscroll.nvim',
        config = function() require('neoscroll').setup() end
    }

    -- Lua utilities
    use 'tjdevries/astronauta.nvim'

end)
