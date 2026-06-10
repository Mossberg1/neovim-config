-- This plugin configures the bar at the bottom of neovim.
-- Add themes in options = { theme }


return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 
        'nvim-tree/nvim-web-devicons' 
    },
    config = function()
        require("lualine").setup({
            options = {
                theme = "onedark",
                transparent = true
            }
        })
    end
} 
