vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost init.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)

    use('wbthomason/packer.nvim')

    -- use('RRethy/nvim-base16') -- base16 colorscheme

    use({
        'nvim-lualine/lualine.nvim',
        config = function()
            require("plugins/configs/lualine-config")
        end,
    })

    use({
        'romgrk/barbar.nvim',
        config = function()
            require("plugins/configs/barbar-config")
        end,
    })

    use('Mofiqul/adwaita.nvim')

    -- Treesitter
    use({
        'nvim-treesitter/nvim-treesitter',
        config = function()
            require("plugins/configs/nvim-treesitter")
        end,
        run = ':TSUpdate'
    })
    use('p00f/nvim-ts-rainbow')
    use('windwp/nvim-ts-autotag')

    -- LSP
    use({
        'neovim/nvim-lspconfig',
        config = function()
            require("plugins/configs/lsp")
        end
    })
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use('hrsh7th/cmp-cmdline')
    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')
    use('L3MON4D3/LuaSnip')
    use('saadparwaiz1/cmp_luasnip')

    use({
        'jose-elias-alvarez/null-ls.nvim',
        config = function()
            require("plugins/configs/null-ls")
        end
    })

    use({
        'simrat39/rust-tools.nvim', -- Rust tools
        config = function()
            require("plugins/configs/rust-tools")
        end
    })

    use({
        'nvim-tree/nvim-tree.lua',
        config = function()
            require("plugins/configs/nvim-tree-config")
        end
    })

    use({
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup()
        end,
        })

    use({
        'numToStr/Comment.nvim',
        config = function()
            require("plugins/configs/comment-config")
        end
    })

    use({
        'nvim-telescope/telescope.nvim',
        config = function()
            require("plugins/configs/telescope-config")
        end
    })
    use('nvim-telescope/telescope-file-browser.nvim')

    use({
        'akinsho/toggleterm.nvim',
        tag = '*',
        config = function()
            require("plugins/configs/toggleterm-config")
        end
    })

    use({
        'norcalli/nvim-colorizer.lua',
        config = function()
            require("plugins/configs/nvim-colorizer")
        end
    })

    use({
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("plugins/configs/indent-blankline-config")
        end
    })

    use({
        "lewis6991/gitsigns.nvim",
        config = function()
            require("plugins/configs/gitsigns-config")
        end
    })

    use({
        'ziontee113/color-picker.nvim',
        config = function()
            require("color-picker")
        end
    })

    -- Debugging
    use('nvim-lua/plenary.nvim')
    use('mfussenegger/nvim-dap')
    use('nvim-tree/nvim-web-devicons')

end)
