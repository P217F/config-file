return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = { "BufReadPost", "BufNewFile" },
    cmd = "Trouble",
    opts = {
        use_diagnostic_signs = true,
        auto_open = false,
        auto_close = false,
        auto_preview = false,
        auto_fold = false,
    },
    config = function(_, opts)
        require("trouble").setup(opts)
    end,
    keys = {},
}
