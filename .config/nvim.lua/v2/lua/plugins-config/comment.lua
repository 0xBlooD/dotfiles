require('Comment').setup{
    padding = false,
    ignore = '^$',
    toggler = {
        line = 'gcc',
        block = 'gbc',
    },
    extra = { eol = 'gcA' },
    mappings = {
        basic = true,
        extra = true
    },
}
