local null_ls = require("null-ls")

local sources = {
	null_ls.builtins.code_actions.eslint,
	null_ls.builtins.code_actions.gitsigns,
	null_ls.builtins.completion.luasnip,
	null_ls.builtins.diagnostics.eslint,
	null_ls.builtins.diagnostics.flake8,
    null_ls.builtins.diagnostics.markdownlint_cli2,
	null_ls.builtins.formatting.prettier,
	null_ls.builtins.formatting.stylua,
}

null_ls.setup({
	sources = sources,
	on_attach = function(client)
		if client.server_capabilities.document_formatting then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
		end
	end,
})
