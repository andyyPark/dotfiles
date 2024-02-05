-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    --
    use {'stevearc/dressing.nvim'}

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }

    use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp",
            'quangnguyen30192/cmp-nvim-ultisnips', 'hrsh7th/cmp-nvim-lua',
            'octaltree/cmp-look', 'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
            'f3fora/cmp-spell', 'hrsh7th/cmp-emoji',
            "L3MON4D3/LuaSnip", -- snippet engine
            "saadparwaiz1/cmp_luasnip", -- for autocompletion
            "rafamadriz/friendly-snippets", -- useful snippets
            "onsails/lspkind.nvim", -- vs-code like pictograms
        }
    }
    use {
        'tzachar/cmp-tabnine',
        run = './install.sh',
        requires = 'hrsh7th/nvim-cmp'
    }

    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    use('shaunsingh/nord.nvim')

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use('theprimeagen/harpoon')

    use('mbbill/undotree')

    use('tpope/vim-fugitive')

    use ('m4xshen/autoclose.nvim')

    use('tpope/vim-commentary')

    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
        }
    }
    use("ray-x/lsp_signature.nvim")

    use("github/copilot.vim")
end)
