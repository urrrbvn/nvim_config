-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
-- }

require("telescope").setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
    },
    find_files = {
      hidden = true,
    },
  },
}

require("lsp-file-operations").setup()

require("ts-error-translator").setup {
  -- Auto-attach to LSP servers for TypeScript diagnostics (default: true)
  auto_attach = true,
}

-- load refactoring Telescope extension
require("telescope").load_extension "refactoring"

vim.keymap.set({ "n", "x" }, "<leader>rr", function() require("telescope").extensions.refactoring.refactors() end)
