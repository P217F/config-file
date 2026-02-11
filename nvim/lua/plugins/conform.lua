return {
    "stevearc/conform.nvim",
    cmd = { "ConformInfo" },
    lazy = false,
    opts = {
        formatters_by_ft = {
            python = { "black" },
            c = { "clang_format" },
            cpp = { "clang_format" },
        },
    },
    config = function(_, opts)
        local conform = require("conform")
        conform.setup(opts)

        vim.keymap.set("n", "<S-f>", function()
            conform.format({
                async = true,
                lsp_fallback = true,
            })
        end, { desc = "Format code (Conform)" })
    end,
}
