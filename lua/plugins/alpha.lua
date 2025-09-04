-- This plugin configures a dashboard when launcing neovim.


return {
    "goolord/alpha-nvim",
    dependencies = {
        "echasnovski/mini.icons"
    },
    config = function()
        require("alpha").setup(require("alpha.themes.startify").config)
    end
}
