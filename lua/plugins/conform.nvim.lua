return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts = opts or {}
    opts.formatters = opts.formatters or {}
    opts.formatters_by_ft = opts.formatters_by_ft or {}

    opts.formatters.eslint_d_layout = {
      command = "eslint_d",
      args = {
        "--fix-to-stdout",
        "--stdin",
        "--stdin-filename",
        "$FILENAME",
        "--fix-type",
        "layout",
      },
      stdin = true,
    }

    opts.formatters_by_ft.javascript = { "eslint_d_layout" }
    opts.formatters_by_ft.javascriptreact = { "eslint_d_layout" }
    opts.formatters_by_ft.typescript = { "eslint_d_layout" }
    opts.formatters_by_ft.typescriptreact = { "eslint_d_layout" }

    opts.format_on_save = {
      timeout_ms = 800,
      lsp_format = "never",
    }

    return opts
  end,
}
