return {
    "folke/which-key.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    config = function()
        local wk = require("which-key")

        wk.setup({
            plugins = {
                spelling = { enabled = true, suggestions = 20 },
            },
            triggers = { "<leader>" },
            show_help = false,
            win = {
                border = "rounded",
            },
        })
    end,
}
