vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    use("wbthomason/packer.nvim")

    use("kyazdani42/nvim-web-devicons")

    --[[use{ "navarasu/onedark.nvim",
         config = function()
             require("plugins-config/onedark")
         end,
    }]]

    use{ "folke/tokyonight.nvim",
         config = function()
             require("plugins-config/tokyonight")
         end
    }

    use{ "kyazdani42/nvim-tree.lua",
         tag = 'nightly',
         config = function()
             require("plugins-config/nvim-tree-config")
         end,
    }

    use{ "neovim/nvim-lspconfig",
         config = function()
             require("plugins-config/lspconfig")
         end,
    }

    use{ "hrsh7th/nvim-cmp",
         config = function()
             require("plugins-config/cmp")
         end,
    }

    use("hrsh7th/cmp-nvim-lsp")
    use("saadparwaiz1/cmp_luasnip")
    use("L3MON4D3/LuaSnip")
    use("onsails/lspkind.nvim")
    use("williamboman/nvim-lsp-installer")

    use{ "windwp/nvim-autopairs",
         config = function()
             require('nvim-autopairs').setup()
         end,
    }

    use("nvim-lua/plenary.nvim")
    use{ "jose-elias-alvarez/null-ls.nvim",
         config = function()
             require("plugins-config/null-ls-config")
         end,
    }

    use{ "nvim-lualine/lualine.nvim",
         config = function()
             require("plugins-config/lualine-config")
         end,
    }

    use{ "romgrk/barbar.nvim",
         config = function()
             require("plugins-config/barbar-config")
         end,
    }

    use{ "nvim-treesitter/nvim-treesitter",
         run = ":TSUpdate",
         config = function()
             require("plugins-config/treesitter")
         end,
    }

    use("nvim-treesitter/nvim-treesitter-refactor")
    use("p00f/nvim-ts-rainbow")
    use("windwp/nvim-ts-autotag")

    use{ "numToStr/Comment.nvim",
         config = function()
             require("plugins-config/comment")
         end
    }

    use{ "lukas-reineke/indent-blankline.nvim",
         config = function()
             require("plugins-config/blankline")
         end
     }

    use{ "akinsho/toggleterm.nvim",
         tag = '*',
         config = function()
             require("plugins-config/toggleterm")
         end
    }
   
    use{ "norcalli/nvim-colorizer.lua",
         config = function()
             require('colorizer').setup()
        end
    }

    use{ "lewis6991/gitsigns.nvim",
         config = function()
             require("plugins-config/gitsigns-config")
         end
    }

end)
