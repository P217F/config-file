return {
  "akinsho/toggleterm.nvim",
  version = "*",
  cmd = "ToggleTerm",
  keys = {
    { "<leader>tf", desc = "Floating Terminal" },
    { "<leader>td", desc = "Bottom Terminal" },
    { "<leader>tr", desc = "Right Terminal" },
  },
  config = function()
    local toggleterm = require("toggleterm")
    local Terminal = require("toggleterm.terminal").Terminal

    toggleterm.setup({
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return math.floor(vim.o.columns * 0.3)
        end
      end,
      open_mapping = nil,
      shade_terminals = true,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = "horizontal",
      float_opts = {
        border = "rounded",
        width = math.floor(vim.o.columns * 0.8),
        height = math.floor(vim.o.lines * 0.8),
      },
    })

    -- Floating
    local float_term = Terminal:new({
      direction = "float",
      hidden = true,
    })

    -- Bottom
    local bottom_term = Terminal:new({
      direction = "horizontal",
      size = 15,
      hidden = true,
    })

    -- Right
    local right_term = Terminal:new({
      direction = "vertical",
      size = math.floor(vim.o.columns * 0.3),
      hidden = true,
    })

    -- Keymaps
    vim.keymap.set("n", "<leader>tf", function()
      float_term:toggle()
    end, { desc = "Floating Terminal" })

    vim.keymap.set("n", "<leader>td", function()
      bottom_term:toggle()
    end, { desc = "Bottom Terminal" })

    vim.keymap.set("n", "<leader>tr", function()
      right_term:toggle()
    end, { desc = "Right Vertical Terminal" })

    vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true })
  end,
}
