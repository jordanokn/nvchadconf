require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>ff", "<cmd> Telescope find_files<cr>")
map("n", "<leader>fg", "<cmd> Telescope live_grep<cr>")
map("n", "<leader>fb", "<cmd> Telescope buffers<cr>")
map("n", "<leader>fh", "<cmd> Telescope help_tags<cr>")

