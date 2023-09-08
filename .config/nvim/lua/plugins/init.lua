vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost init.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)

    use('wbthomason/packer.nvim')

    use('nvim-tree/nvim-web-devicons')
    use('nvim-lua/plenary.nvim')
    use('mfussenegger/nvim-dap')

    use('Mofiqul/adwaita.nvim')

    use{
        'nvim-lualine/lualine.nvim',
        config = [[require('plugins/configs/lualine')]]
    }

    use{
        'romgrk/barbar.nvim',
        config = [[require('plugins/configs/barbar')]]
    }

    use{
        'windwp/nvim-autopairs',
        config = [[require('nvim-autopairs').setup()]]
    }

    use{
        'numToStr/Comment.nvim',
        config = [[require('plugins/configs/comment')]]
    }

    use{
        'nvim-treesitter/nvim-treesitter',
        config = [[require("plugins/configs/nvim-treesitter")]],
        run = ':TSUpdate'
    }
    use('p00f/nvim-ts-rainbow')
    use('windwp/nvim-ts-autotag')

    use{
        'neovim/nvim-lspconfig',
        config = [[require('plugins/configs/completion')]]
    }
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use('hrsh7th/cmp-cmdline')
    use('hrsh7th/cmp-nvim-lsp')
    use('petertriho/cmp-git')
    use('L3MON4D3/LuaSnip')
    use('saadparwaiz1/cmp_luasnip')
    use('williamboman/mason.nvim' )
    use('williamboman/mason-lspconfig.nvim')
    use{
        'creativenull/efmls-configs-nvim',
        tag = 'v1.*', -- tag is optional, but recommended
    }

    use{
        'lewis6991/gitsigns.nvim',
        config = [[require('gitsigns').setup()]]
    }

    use{
        'nvim-tree/nvim-tree.lua',
        config = [[require("plugins/configs/nvim-tree")]]
    }

end)
