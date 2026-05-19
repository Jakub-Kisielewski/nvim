-- 1. Package Manager Setup
vim.api.nvim_create_autocmd('PackChanged', { 
    callback = function(ev)
        local name, kind = ev.data.spec.name, ev.data.kind
        -- FIX: Added 'install' so TSUpdate runs on the very first download too
        if name == 'nvim-treesitter' and (kind == 'update' or kind == 'install') then
            if not ev.data.active then vim.cmd.packadd('nvim-treesitter') end
            vim.cmd('TSUpdate')
        end
    end 
})

vim.pack.add({  
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter' } 
})

require('nvim-treesitter').install({ 
    "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "java", "cpp" 
})

