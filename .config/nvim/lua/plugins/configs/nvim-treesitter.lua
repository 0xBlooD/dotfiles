require("nvim-treesitter.configs").setup {

    ensure_installed = {
        "python",
        "rust",
        "bash",
        "lua",
        "html",
        "css",
        "javascript",
        "json",
        "sql",
        "dockerfile",
        "markdown"
    },

    sync_install = true,
    auto_install = true,
    
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },

    indent = { enable = true },

    rainbow = { enable = true },
    autotag = { enable = true },

}

require("nvim-treesitter").statusline()
