return {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  opts = {
    -- Указываем, что используем typescript-language-server от Mason
    handlers = {
      -- Обработчики для лучшей интеграции
    },

    on_attach = function(client, bufnr)
      -- Ваш стандартный on_attach код
      local opts = { buffer = bufnr, noremap = true, silent = true }

      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, opts)
    end,

    settings = {
      -- Настройки, которые пойдут в typescript-language-server
      tsserver = {
        -- Например, отключаем некоторые фичи, которые лучше обрабатывает typescript-tools
      },

      -- Настройки самого typescript-tools.nvim
      separate_diagnostic_server = false,
      publish_diagnostic_on = "insert_leave",
      expose_as_code_action = "all",
    },
  },
  ft = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
}
