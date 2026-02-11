return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local on_attach = function(_, bufnr)
        local opts = { noremap = true, silent = true, buffer = bufnr }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      end

      vim.api.nvim_create_autocmd("LspAttach", {
        once = true,
        callback = function()
          vim.schedule(function()
            local ok, base46 = pcall(require, "base46")
            if ok then
              base46.load_all_highlights()
            end
          end)
        end,
      })

      vim.lsp.config("clangd", {
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--completion-style=detailed",
          "--cross-file-rename",
        },
        capabilities = capabilities,
        on_attach = on_attach,
        root_markers = {
          ".clangd",
          "compile_commands.json",
          ".git",
        },
      })
      vim.lsp.enable("clangd")

      vim.lsp.config("pyright", {
        capabilities = capabilities,
        on_attach = on_attach,
        root_markers = {
          "pyrightconfig.json",
          "pyproject.toml",
          "setup.py",
          ".git",
        },
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
