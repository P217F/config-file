-- Inital config
-- Resize buffer
vim.api.nvim_set_keymap('n', '<C-Left>', '<CMD>vertical resize -1<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-Right>', '<CMD>vertical resize +1<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-Down>', '<CMD>resize +1<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-Up>', '<CMD>resize -1<CR>', { silent = true })

-- Move to buffer
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap=true, silent=true })

-- Undo/redo
vim.api.nvim_set_keymap('n', '<C-z>', 'u', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-z>', '<Esc>u', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-z>', '<Esc>u', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-y>', '<C-r>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-y>', '<Esc><C-r>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-y>', '<Esc><C-r>', { noremap = true, silent = true })

-- Disable nohighlight
vim.api.nvim_set_keymap('n', '<leader>nh', ':noh<CR><Esc>', { noremap = true, silent = true })

-- Split buffer
vim.api.nvim_set_keymap('n', '<F1>', ':sp<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<F2>', ':vs<CR>', { noremap=true, silent=true })

-- Save
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap=true, silent=true })
