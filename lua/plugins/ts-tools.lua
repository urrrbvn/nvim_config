return {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  opts = {
    handlers = {},

    on_attach = function(client, bufnr)
      local opts = { buffer = bufnr, noremap = true, silent = true }

      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, opts)
    end,

    settings = {
      tsserver = {},

      separate_diagnostic_server = false,
      publish_diagnostic_on = "insert_leave",
      expose_as_code_action = "all",
    },
  },
  ft = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
}
