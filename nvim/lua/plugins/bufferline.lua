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
                        text = "Explorer",
                        highlight = "Directory",
                        separator = true
                    }
                },
            },

            highlights = {
                fill = {
                    bg = { attribute = "bg", highlight = "Normal" },
                },

                background = {
                    fg = { attribute = "fg", highlight = "Normal" },
                    bg = { attribute = "bg", highlight = "Normal" },
                },

                buffer_selected = {
                    fg = { attribute = "fg", highlight = "TabLineSel" },
                    bg = { attribute = "bg", highlight = "TabLineSel" },
                    bold = true,
                },

                buffer_visible = {
                    fg = { attribute = "fg", highlight = "TabLine" },
                    bg = { attribute = "bg", highlight = "TabLine" },
                },

                indicator_selected = {
                    fg = { attribute = "fg", highlight = "DiagnosticHint" },
                    bg = { attribute = "bg", highlight = "TabLineSel" },
                },

                error = {
                    fg = { attribute = "fg", highlight = "DiagnosticError" },
                },

                warning = {
                    fg = { attribute = "fg", highlight = "DiagnosticWarn" },
                },
            },

        })

        vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { silent = true })
        vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { silent = true })
        vim.keymap.set("n", "<leader>x", "<cmd>Bdelete<CR>", { silent = true })
    end,
}
