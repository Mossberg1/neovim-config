-- Function to set colorscheme for neovim, defaults to gruvbox.
-- This function will also add transparency to neovim.

function set_colorscheme(color)
    color = color or "onedark"
    vim.cmd.colorscheme(color)
    
    -- Transparent backgrounds

    --vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    --vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })
end

set_colorscheme()
