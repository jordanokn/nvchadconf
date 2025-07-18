local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
  formatters_by_ft = {
    python = { "ruff" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
