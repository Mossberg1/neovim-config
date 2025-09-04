-- This enables better syntax highlighting.
-- Replace ensure_installed with auto_install
-- if you want to detect uninstalled parsers and auto install them.


return { 
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local treesitter_config = require("nvim-treesitter.configs")
        treesitter_config.setup({
            ensure_installed = { 
                "bash",
                "c",
                "c_sharp",
                "cpp",
                "css",
                "csv",
                "dockerfile",
                "git_config",
                "git_rebase",
                "gitignore",
                "go",
                "html",
                "htmldjango",
                "http",
                "java",
                "javascript",
                "json",
                "linkerscript",
                "lua",
                "make",
                "markdown",
                "nasm",
                "powershell",
                "python",
                "regex",
                "rust",
                "sql",
                "typescript",
                "xml"
            },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}

