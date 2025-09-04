-- This plugin enables searching for files, but also grepping files.
-- This also enbles a ui dropdown for code actions (lsp).


return  {
    { 
        'nvim-telescope/telescope.nvim', 
        dependencies = { 
            'nvim-lua/plenary.nvim' 
        },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>fs", builtin.find_files, {})
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {

                        }
                    }
                }
            })
            require("telescope").load_extension("ui-select")
        end
    }
}

