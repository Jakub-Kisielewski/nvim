vim.lsp.enable({
  "bashls",  -- Bash
  "clangd",  -- C and C++
  "jdtls",   -- Java
  "lua_ls",  -- Lua
  "pyright", -- python
})

vim.diagnostic.config({ virtual_text = true })
vim.diagnostic.config({
  update_in_insert = true,
})
