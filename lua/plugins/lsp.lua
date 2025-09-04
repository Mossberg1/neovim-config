-- This installs and configures all the language servers for neovim
-- Refer to the documentation for nvim-lspconfig to make sure that everything
-- is installed to properly install and add the language server to neovim.
-- Also go to the documentation for mason-lspconfig to see supported language servers.

return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "bashls",
                    "csharp_ls",
                    "clangd",
                    "cssls",
                    "tailwindcss",
                    "dockerls",
                    "html",
                    "htmx",
                    "ts_ls",
                    "lua_ls",
                    "pyright",
                    "rust_analyzer",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lsp = require("lspconfig")

            -- Setup language servers
            lsp.bashls.setup({
                capabilities = capabilities
            })
            lsp.csharp_ls.setup({
                capabilities = capabilities
            })
            lsp.clangd.setup({
                capabilities = capabilities
            })
            lsp.cssls.setup({
                capabilities = capabilities
            })
            lsp.tailwindcss.setup({
                capabilities = capabilities
            })
            lsp.dockerls.setup({
                capabilities = capabilities
            })
            lsp.html.setup({
                capabilities = capabilities
            })
	    lsp.htmx.setup({
		capabilities = capabilities
	    })
            lsp.ts_ls.setup({
                capabilities = capabilities
            })
            lsp.lua_ls.setup({
                capabilities = capabilities
            })
            lsp.pyright.setup({
                capabilities = capabilities
            })
            lsp.rust_analyzer.setup({
                capabilities = capabilities
            })

            -- Keymaps
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
