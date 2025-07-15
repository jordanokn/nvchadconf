require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>ff", "<cmd> Telescope find_files<cr>")
map("n", "<leader>fg", "<cmd> Telescope live_grep<cr>")
map("n", "<leader>fb", "<cmd> Telescope buffers<cr>")
map("n", "<leader>fh", "<cmd> Telescope help_tags<cr>")


map("v", "<C-c>", '"+y', { desc = "Copy to system clipboard" })

map('n', '<leader>k', function()
  vim.diagnostic.config({ virtual_lines = { current_line = true }, virtual_text = false })

  vim.api.nvim_create_autocmd('CursorMoved', {
    group = vim.api.nvim_create_augroup('line-diagnostics', { clear = true }),
    callback = function()
      vim.diagnostic.config({ virtual_lines = false, virtual_text = true })
      return true
    end,
  })
end)
