vim.pack.add({
    {
        src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
        version = vim.version.range('3')
    },
    -- dependencies
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/MunifTanjim/nui.nvim",
    -- optional, but recommended
    "https://github.com/nvim-tree/nvim-web-devicons",
})

require("neo-tree").setup({
    window = {
        mappings = {
            ["P"] = {
                "toggle_preview",
                config = {
                    use_float = false,
                    -- use_image_nvim = true,
                    -- use_snacks_image = true,
                    -- title = 'Neo-tree Preview',
                },
            },
        }
    }
})

vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", {} ) -- toggle neotree visibility
