local opt = vim.opt
opt.autoindent = true -- enable auto indent
opt.expandtab = true -- insert spaces instead of tabs
opt.tabstop = 4 -- number of spaces for tabs
opt.softtabstop = 4 -- number of spaces for a tab i.e tab every 4 spaces
opt.shiftwidth = 4 -- number of spaces for autoindent
opt.list = true -- show whitespace characters
opt.number = true -- show line numbers
opt.relativenumber = true -- show relative line numbers
opt.numberwidth = 2 -- width of line number column
opt.wrap = false -- disable line wrapping
opt.cursorline = true -- highlight current line
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

vim.cmd.colorscheme("catppuccin")
