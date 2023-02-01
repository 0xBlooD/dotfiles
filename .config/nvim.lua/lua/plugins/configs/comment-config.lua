require('Comment').setup{
    padding = true,
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
