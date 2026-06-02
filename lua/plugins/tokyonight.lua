-- Configure tokyonight theme.


return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = { },
    config = function()
        require("tokyonight").setup({
            transparent = false,
            terminal_colors = true
        })    
    end
}
