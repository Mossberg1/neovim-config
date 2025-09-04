-- This plugin enables a file tree for neovim.


return { 
    "nvim-neo-tree/neo-tree.nvim", 
    branch = "v2.x", 
    dependencies = { 
        "nvim-lua/plenary.nvim", 
        "nvim-tree/nvim-web-devicons", 
        "MunifTanjim/nui.nvim"
    },
    config = function()
        vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")
        require("neo-tree").setup({
            close_if_last_window = true,
            indent = {
                indent_size = 4
            },
            window = {
                position = "left",
            },
        })
    end
}

