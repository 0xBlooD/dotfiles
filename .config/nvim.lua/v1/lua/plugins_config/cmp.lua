require("cmp").setup{
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end
    },
    sources = {
        { name  = "luasnip" },
        { name = "buffer" },
        { name = "nvim_lsp" },
        { name = "path" }
    },
}

require("cmp").setup.cmdline({ "/", "?" }, {
    mapping = require("cmp").mapping.preset.cmdline(),
    sources = {
        { name = "buffer" },
    }
})

require("cmp").setup.cmdline(":", {
    mapping = require("cmp").mapping.preset.cmdline(),
    sources = require("cmp").config.sources({
        { name = "path" }
    }, {
        { name = "cmdline" }
    })
})

local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

require("lspconfig")["pyright"].setup {
    capabilities = capabilities
}
