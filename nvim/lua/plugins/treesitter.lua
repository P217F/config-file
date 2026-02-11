return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",

  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },

  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "python", "c", "cpp" },
      sync_install = true,
      auto_install = true,
      ignore_install = {},

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        disable = function(_, buf)
          local max_filesize = 8182 * 8182
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
          return false
        end,
      },

      indent = { enable = true },
      incremental_selection = { enable = true },

      textobjects = {
        -- Move between function/class
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            ["]f"] = "@function.outer",
            ["]c"] = "@class.outer",
          },
          goto_previous_start = {
            ["[f"] = "@function.outer",
            ["[c"] = "@class.outer",
          },
        },

        -- Swap parameters
        swap = {
          enable = true,
          swap_next = { [">a"] = "@parameter.inner" },
          swap_previous = { ["<a"] = "@parameter.inner" },
        },
      },
    })
  end,
}
