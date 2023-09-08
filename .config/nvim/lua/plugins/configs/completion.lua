local lspconfig = require('lspconfig')

require("mason").setup()

local servers = {
    "bashls",
    "cssls",
    "dockerls",
    "emmet_ls",
    "eslint",
    "html",
    "marksman",
    "pyright",
    "rust_analyzer"
}

require("mason-lspconfig").setup {
    ensure_installed = servers
}

local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', 'gca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
end

local cmp = require'cmp'

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
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
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
        }, {
        { name = 'buffer' },
    })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
        }, {
        { name = 'buffer' },
    })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
        }, {
        { name = 'cmdline' }
    })
})

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

for _, server in ipairs(servers) do
    lspconfig[server].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end

local shellcheck = require('efmls-configs.linters.shellcheck')
local beautysh = require('efmls-configs.formatters.beautysh')
local stylelint = require('efmls-configs.linters.stylelint')
local prettier = require('efmls-configs.formatters.prettier')
local hadolint = require('efmls-configs.linters.hadolint')
local gitlint = require('efmls-configs.linters.gitlint')
local djlint = require('efmls-configs.linters.djlint')
local markdownlint = require('efmls-configs.linters.markdownlint')
local cbfmt = require('efmls-configs.formatters.cbfmt')
local flake8 = require('efmls-configs.linters.flake8')
local black = require('efmls-configs.formatters.black')
local rustfmt = require('efmls-configs.formatters.rustfmt')

local languages = {
    bash = { shellcheck, beautysh },
    css = { stylelint, prettier },
    docker = { hadolint },
    git = { gitlint },
    html = { djlint, prettier },
    markdown = { markdownlint, cbfmt },
    python = { flake8, black },
    rust = { rustfmt },
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

require('lspconfig').efm.setup(vim.tbl_extend('force', efmls_config, {
  on_attach = on_attach,
  capabilities = capabilities,
}))
