local options = {
  formatters_by_ft = {
    html = { "prettierd", "prettier", stop_after_first = true },
    css = { "prettierd", "prettier", stop_after_first = true },
    javascript = { "prettierd", "prettier", stop_after_first = true },
    typescript = { "prettierd", "prettier", stop_after_first = true },
    javascriptreact = { "prettierd", "prettier", stop_after_first = true },
    typescriptreact = { "prettierd", "prettier", stop_after_first = true },
    lua = { "stylua" },
    java = { "google-java-format" },
    python = { "black" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    cmake = { "cmakelang" },
    markdown = { "prettierd", "prettier", "markdown-toc", stop_after_first = true },
    shell = { "shfmt" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
