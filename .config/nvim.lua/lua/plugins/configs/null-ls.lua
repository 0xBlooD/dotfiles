local null_ls = require("null-ls")

local sources = { 
    null_ls.builtins.code_actions.eslint,
    null_ls.builtins.code_actions.gitsigns,
    null_ls.builtins.code_actions.ltrs,
    null_ls.builtins.completion.luasnip,
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.diagnostics.flake8,
    null_ls.builtins.diagnostics.jsonlint,
    null_ls.builtins.diagnostics.ltrs,
    null_ls.builtins.diagnostics.luacheck,
    null_ls.builtins.diagnostics.markdownlint,
    null_ls.builtins.diagnostics.stylint,
    null_ls.builtins.formatting.beautysh,
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.eslint,
    null_ls.builtins.formatting.json_tool,
    null_ls.builtins.formatting.lua_format,
    null_ls.builtins.formatting.markdownlint,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.rustfmt,
}

null_ls.setup {
    sources = sources,
}
