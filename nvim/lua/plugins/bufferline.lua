return {
    "akinsho/bufferline.nvim",
    dependencies = { "famiu/bufdelete.nvim" },
    version = "*",
    event = "VeryLazy",
    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers",
                numbers = "none",
                diagnostics = "nvim_lsp",
                diagnostics_indicator = function(count, level)
                    local icon = level:match("error") and " " or " "
                    return " " .. icon .. count
                end,
                color_icons = true,
                separator_style = "thin",
                show_buffer_icons = true,
                show_close_icon = true,
                show_tab_indicators = false,
                always_show_bufferline = true,
                persist_buffer_sort = true,
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "Nvim-Tree Explorer",
                        highlight = "Directory",
                        separator = true
                    }
                },
            },
            highlights = {
                buffer_selected = {
                    guibg = "#2c2d30",
                },
            },
        })

        vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { silent = true })
        vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { silent = true })
        vim.keymap.set("n", "<leader>x", "<cmd>Bdelete<CR>", { silent = true })
    end,
}
