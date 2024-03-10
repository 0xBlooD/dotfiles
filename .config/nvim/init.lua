vim.opt.autochdir = true
vim.opt.autoindent = true
vim.opt.autoread = true
vim.opt.autowrite = true
vim.opt.background = "dark"
vim.opt.backup = false
vim.opt.breakindent = true
vim.opt.casemap = "keepascii"
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = "menu,preview,noinsert,noselect,popup"
vim.opt.cursorline = true
vim.opt.cursorlineopt = "screenline"
vim.opt.emoji = true
vim.opt.encoding = "utf-8"
vim.opt.expandtab = true
vim.opt.fileencoding = "utf-8"
vim.opt.foldmethod = "expr"
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.spell = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.syntax = "enable"
vim.opt.tabstop = 4
vim.opt.wildmenu = true
vim.opt.wildoptions = "fuzzy"

vim.g.mapleader = " "

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map('n', '<A-h>', '<Cmd>wincmd h<CR>', opts)
map('n', '<A-j>', '<Cmd>wincmd j<CR>', opts)
map('n', '<A-k>', '<Cmd>wincmd k<CR>', opts)
map('n', '<A-l>', '<Cmd>wincmd l<CR>', opts)
map({'n', 'i'}, '<A-x>', '<ESC><Cmd>nohl<CR>', opts)

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    {
        "Mofiqul/adwaita.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.adwaita_darker = true
            vim.g.adwaita_disable_cursorline = true
            vim.g.adwaita_transparent = true
            vim.cmd('colorscheme adwaita')
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        lazy = false,
        opts = {
            options = { theme = "adwaita", icons_enabled = true },
        },
    },
    {
        "romgrk/barbar.nvim",
        lazy = false,
        dependencies = {
            "lewis6991/gitsigns.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            animation = false,
            tabpages = true,
            clickable = true,
            hide = {extensions = true, inactive = false},
            highlight_alternate = false,
            highlight_visible = true,
            insert_at_end = true,
        },
        config = function()
            require('gitsigns').setup()
            map('n', '<A-S-h>', '<Cmd>BufferPrevious<CR>', opts)
            map('n', '<A-S-l>', '<Cmd>BufferNext<CR>', opts)
            map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
            map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
            map('n', '<leader>gb', '<Cmd>Gitsigns toggle_current_line_blame<CR>', opts)
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        dependencies = {
            "p00f/nvim-ts-rainbow",
            "windwp/nvim-ts-autotag"
        },
        opts = function ()
            require'nvim-treesitter.configs'.setup {
                ensure_installed = {
                    "bash",
                    "comment",
                    "css",
                    "dart",
                    "diff",
                    "dockerfile",
                    "gitcommit",
                    "gitignore",
                    "html",
                    "javascript",
                    "jq",
                    "lua",
                    "markdown",
                    "markdown_inline",
                    "php",
                    "python",
                    "rust",
                    "toml",
                    "vue",
                },
                sync_install = true,
                auto_install = true,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
            }
        end
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        dependencies = {
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "creativenull/efmls-configs-nvim",
            "zbirenbaum/copilot-cmp",
        },
        config = function()
            local servers = {
                "bashls",
                "cssls",
                "dockerls",
                "eslint",
                "emmet_ls",
                "html",
                "jsonls",
                "lua_ls",
                "marksman",
                "phpactor",
                "pyright",
                "rust_analyzer",
                "taplo",
                "tailwindcss",
                "tsserver",
                "vuels",
            }
            require("mason").setup()
            require("mason-lspconfig").setup {ensure_installed = servers}
            local shellcheck = require('efmls-configs.linters.shellcheck')
            local beautysh = require('efmls-configs.formatters.beautysh')
            local stylelint = require('efmls-configs.linters.stylelint')
            local prettier = require('efmls-configs.formatters.prettier')
            local dartfmt = require('efmls-configs.formatters.dartfmt')
            local hadolint = require('efmls-configs.linters.hadolint')
            local gitlint = require('efmls-configs.linters.gitlint')
            local djlint = require('efmls-configs.linters.djlint')
            local eslint_lint = require('efmls-configs.linters.eslint')
            local eslint_fmt = require('efmls-configs.formatters.eslint')
            local jq = require('efmls-configs.linters.jq')
            local luacheck = require('efmls-configs.linters.luacheck')
            local markdownlint = require('efmls-configs.linters.markdownlint')
            local php = require('efmls-configs.linters.php')
            local phpcbf = require('efmls-configs.formatters.phpcbf')
            local mypy = require('efmls-configs.linters.mypy')
            local black = require('efmls-configs.formatters.black')
            local rustfmt = require('efmls-configs.formatters.rustfmt')
            local taplo = require('efmls-configs.formatters.taplo')
            local languages = {
                bash = { shellcheck, beautysh },
                css = { stylelint, prettier },
                dart = { dartfmt },
                docker = { hadolint },
                gitcommit = { gitlint },
                html = { djlint, prettier },
                javascript = { eslint_lint, eslint_fmt },
                json = { jq },
                lua = { luacheck },
                markdown = { markdownlint },
                php = { php, phpcbf },
                python = { mypy, black },
                rust = { rustfmt },
                sh = { shellcheck },
                toml = { taplo },
                typescript = { eslint_lint, prettier },
            }
            local efmls_config = {
                filetypes = vim.tbl_keys(languages),
                settings = {
                    rootMarkers = { '.git/' },
                    languages = languages,
                },
                init_options = {
                    documentFormatting = true,
                    documentRangeFormatting = true,
                },
            }
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local on_attach = function(client, bufnr)
                vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
                local bufopts = { noremap = true, silent = true, buffer = bufnr }
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
                vim.keymap.set('n', 'gca', vim.lsp.buf.code_action, bufopts)
                vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
                vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
            end
            for _, server in ipairs(servers) do
                lspconfig[server].setup {
                    on_attach = on_attach,
                    capabilities = capabilities,
                }
            end
            lspconfig.efm.setup(vim.tbl_extend('force', efmls_config, {
                on_attach = on_attach,
                capabilities = capabilities,
            }))
            require("copilot_cmp").setup()
            local luasnip = require("luasnip")
            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                    ['<Tab>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        elseif luasnip.expand_or_jumpable() then
                            luasnip.expand_or_jump()
                        else
                            fallback()
                        end
                    end, { 'i', 's' }),
                    ['<S-Tab>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        elseif luasnip.jumpable(-1) then
                            luasnip.jump(-1)
                        else
                            fallback()
                        end
                    end, { 'i', 's' }),
                }),
                sources = cmp.config.sources({
                    { name = "copilot", group_index = 2 },
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                    { name = 'path' },
                }, {
                    { name = 'buffer' },
                })
            })
            cmp.setup.filetype('gitcommit', {
                sources = cmp.config.sources({
                    { name = 'git' },
                }, {
                    { name = 'buffer' },
                })
            })
            cmp.setup.cmdline({ '/', '?' }, {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = 'buffer' }
                }
            })
            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = 'path' }
                }, {
                    { name = 'cmdline' }
                })
            })
        end,
    },
    {
        "numToStr/Comment.nvim",
        lazy = false,
        config = true
    },
    {
        "nvim-tree/nvim-tree.lua",
        lazy = false,
        config = true,
        opts = function ()
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
            vim.opt.termguicolors = true
            map('n', '<A-m>', '<Cmd>NvimTreeToggle<CR>', opts)
        end
    },
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        lazy = false,
        config = true,
        opts = function ()
            require("toggleterm").setup{
                hide_numbers = true,
                autochdir = true,
                start_in_insert = true,
                terminal_mappings = true,
                direction = "vertical",
                close_on_exit = true,
            }
            map('n', '<leader>tf', '<Cmd>ToggleTerm direction=float<CR>', opts)
            map('n', '<leader>tv', '<Cmd>ToggleTerm direction=vertical size=60<CR>', opts)
            map('n', '<A-t>', '<Cmd>ToggleTermToggleAll<CR>', opts)
        end
    },
    {
        "norcalli/nvim-colorizer.lua",
        lazy = false,
        opts = function ()
            map({'n', 'i'}, '<leader>ct', '<Cmd>ColorizerToggle<CR>', opts)
        end
    },
    {
        "lewis6991/gitsigns.nvim",
        lazy = false,
        config = true
    },
    {
        "stevearc/dressing.nvim",
        lazy = false,
        opts = function ()
            require('dressing').setup({
                select = {
                    get_config = function(opts)
                        if opts.kind == 'codeaction' then
                            return {
                                backend = 'nui',
                                nui = {
                                    relative = 'cursor',
                                    max_width = 40,
                                }
                            }
                        end
                    end
                }
            })
        end
    },
})
