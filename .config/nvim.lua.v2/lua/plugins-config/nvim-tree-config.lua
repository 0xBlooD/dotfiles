vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup({
    sort_by = 'case_sensitive',
    view = {
        adaptive_size = true,
        float = { quit_on_focus_loss = true },
    },
    filters = { dotfiles = true },
    renderer = {
        icons = {
            webdev_colors = true,
            git_placement = "before",
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
        }
    },
    git = {
        enable = true,
        ignore = true,
        show_on_dirs = true,
        timeout = 400,
    },
})
