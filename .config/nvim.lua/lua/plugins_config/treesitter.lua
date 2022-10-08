require("nvim-treesitter.configs").setup{
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highligting = false,
    },
    rainbow = {
        enable = true,
        extended_mode = true,
    },
    indent = {
        enable = true,
    },
}
