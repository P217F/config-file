return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp"
        },
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local on_attach = function(_, bufnr)
                local opts = { noremap = true, silent = true, buffer = bufnr }
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
            end

            vim.lsp.config("clangd", {
                cmd = {
                    "clangd",
                    "--background-index",
                    "--clang-tidy",
                    "--completion-style=detailed",
                    "--cross-file-rename",
                },
                root_markers = {
                    ".clangd",
                    "compile_commands.json",
                    ".git",
                },
                capabilities = capabilities,
                on_attach = on_attach,
            })
            vim.lsp.enable("clangd")

            vim.lsp.config("pyright", {
                root_markers = {
                    "pyrightconfig.json",
                    "pyproject.toml",
                    "setup.py",
                    ".git",
                },
                capabilities = capabilities,
                on_attach = on_attach,
                settings = {
                    python = {
                        analysis = {
                            diagnosticMode = "workspace",
                            autoSearchPaths = true,
                        }
                    }
                }
            })
            vim.lsp.enable("pyright")

            vim.diagnostic.config({
                virtual_text = true,
                signs = false,
                underline = true,
                update_in_insert = false,
                severity_sort = true,
            })
        end,
    },
}
