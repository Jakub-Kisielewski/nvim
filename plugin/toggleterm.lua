vim.pack.add({
    {
        src = 'https://github.com/akinsho/toggleterm.nvim',
    },
})

require("toggleterm").setup({
    size = 20,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,
    persist_size = true,
    direction = 'tab',
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
        border = 'curved',
        winblend = 0,
        highlights = {
            border = "Normal",
            background = "Normal",
        }
    }
})

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, desc = "Exit terminal mode" })
