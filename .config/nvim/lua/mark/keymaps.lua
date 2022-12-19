local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

--Remap space as leader key
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- telescope keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- bufferline keymaps
vim.keymap.set('n', '<leader>h', ":BufferLineCyclePrev<CR>", {})
vim.keymap.set('n', '<leader>l', ":BufferLineCycleNext<CR>", {})
vim.keymap.set('n', '<leader>bd', ":bdelete<CR>", {})
