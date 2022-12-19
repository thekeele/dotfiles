--Remap space as leader key
vim.g.mapleader = " "

-- project viewer keymaps
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- telescope keymaps
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

-- bufferline keymaps
vim.keymap.set("n", "<leader>h", ":BufferLineCyclePrev<CR>", {})
vim.keymap.set("n", "<leader>l", ":BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", {})
