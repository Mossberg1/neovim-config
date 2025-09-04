-- This plugins enable formatting for files.
-- Correct formatter has to first be installed through :Mason
-- and then added to the soruces = {}


return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        
        null_ls.setup({
            sources = { 
                -- Diagnostics

                -- Formating
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.clang_format,
                null_ls.builtins.formatting.csharpier,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.stylua,      
            }
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end
}
