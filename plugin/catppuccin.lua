vim.pack.add { { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } }

-- 1. Create a variable to remember your current state
local is_transparent = false

-- 2. Wrap the setup and colorscheme application in a function
local function apply_catppuccin()
    require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = is_transparent,
    })
    -- The standard command is "catppuccin", not "catppuccin-nvim"
    vim.cmd.colorscheme("catppuccin")
end

-- 3. Initial load (using a safe pcall so it doesn't crash on fresh installs)
local ok, _ = pcall(require, "catppuccin")
if ok then
    apply_catppuccin()
else
    vim.cmd("packadd catppuccin")
end

-- 4. Create the keybinding to toggle the state
vim.keymap.set("n", "<leader>tt", function()
    -- Flip the true/false state
    is_transparent = not is_transparent
    
    -- Re-run the setup and redraw the colors
    apply_catppuccin()
    
    -- Optional: show a little message at the bottom of the screen
    print("Background transparency: " .. tostring(is_transparent))
end, { desc = "Toggle Catppuccin Transparency" })
