vim.cmd [[packadd packer.nvim]] -- only required if you have packer configured as `opt`

return require("packer").startup(function(use)
    
    use("wbthomason/packer.nvim") -- packer can manage itself

    use({
        "kyazdani42/nvim-tree.lua", -- filesystem navigation
        requires = "kyazdani42/nvim-web-devicons", -- filesystem icons
        config = function()
            require("plugins_config/nvim-tree") -- exec nvim-tree config
        end,
    })

    use("mhinz/vim-startify") -- start screen

    use("DanilaMihailov/beacon.nvim") -- cursor jump

    use({
        "akinsho/bufferline.nvim",
        config = function()
            require("plugins_config/bufferline")
        end
    })

    use({
        "nvim-telescope/telescope.nvim", tag = "0.1.0", -- Find Files
        requires = { {"nvim-lua/plenary.nvim"} },
        config = function()
            require("plugins_config/telescope") -- exec telescode config
        end,
    })

    use({
        "lewis6991/gitsigns.nvim", -- super fast git decorations implemented purely in lua/teal.
        config = function()
            require("plugins_config/gitsigns") -- exec gitsigns config
        end,
    })

    use({
        "nvim-treesitter/nvim-treesitter", -- better highlight
        config = function()
            require("plugins_config/treesitter") -- exec treesitter config
        end,
    })

    use({
        "windwp/nvim-autopairs", -- enable autopairs
        config = function()
            require("plugins_config/autopairs") -- exec autopairs config
        end,
    })

    use({
        "neovim/nvim-lspconfig", -- lsp client
        config = function()
            require("plugins_config/cmp") -- exec lspconfig config
        end
    })

    use("williamboman/nvim-lsp-installer") -- lsp installer

    use({
        "hrsh7th/cmp-nvim-lsp", -- nvim-cmp source for neovim's built-in language server client
        config = function()
        end
    })

    use({
        "hrsh7th/cmp-buffer", -- nvim-cmp source for buffer words
        config = function()
        end
    })

    use({
        "hrsh7th/cmp-path", -- nvim-cmp source for filesystem paths
        config = function()
        end
    })

    use({
        "hrsh7th/cmp-cmdline", -- nvim-cmp source for vim's cmdline
        config = function()
        end
    })

    use({
        "hrsh7th/nvim-cmp", -- a completion engine plugin for neovim written in Lua
        config = function()
        end
    })

    use({
        "L3MON4D3/LuaSnip", -- snippets that make use of the entire functionality of this plugin have to be defined in Lua
        config = function()
            require("plugins_config/luasnip") -- exec luasnip config
        end
    })

    use({
        "saadparwaiz1/cmp_luasnip", -- luasnip completion source for nvim-cmp
        config = function()
        end
    })

    use("joshdick/onedark.vim")

    use({
        "nvim-lualine/lualine.nvim",
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function()
            require("plugins_config/lualine")
        end
    })

    use({
        "p00f/nvim-ts-rainbow",
        config = function()
            require("plugins_config/treesitter")
        end
    })

    use({
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("plugins_config/blankline")
        end
    })

    use("dstein64/vim-startuptime")

end)
