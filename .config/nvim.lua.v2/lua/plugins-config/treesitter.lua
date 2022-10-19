require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"python",
		"lua",
		"rust",
		"html",
		"css",
		"javascript",
		"bash",
		"json",
		"sql",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	refactor = {
		highlight_definitions = {
			enable = true,
			clear_on_cursor_move = true,
		},
		smart_rename = {
			enable = true,
			keymaps = {
				smart_rename = "grr",
			},
		},
		navigation = {
			enable = true,
			keymaps = {
				goto_definition = "gnd",
				list_definitions = "gnD",
				list_definitions_toc = "gO",
				goto_next_usage = "<C-*>",
				goto_previous_usage = "<C-#>",
			},
		},
		rainbow = {
			enable = true,
			extended_mode = true,
		},
	},
	autotag = { enable = true },
})

local npairs = require("nvim-autopairs")
local Rule = require("nvim-autopairs.rule")

npairs.setup({
	check_ts = true,
	ts_config = {
		lua = { "string" },
        javascript = { "template_string" },
		java = false,
	},
})

local ts_conds = require("nvim-autopairs.ts-conds")

npairs.add_rules({
	Rule("%", "%", "lua"):with_pair(ts_conds.is_ts_node({ "string", "comment" })),
	Rule("$", "$", "lua"):with_pair(ts_conds.is_not_ts_node({ "function" })),
})
