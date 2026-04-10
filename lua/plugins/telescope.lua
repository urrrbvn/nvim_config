return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      local telescope = require "telescope"

      telescope.setup(vim.tbl_deep_extend("force", opts or {}, {
        pickers = {
          find_files = {
            find_command = {
              "rg",
              "--files",
              "--glob",
              "!**/index.js",
              "--glob",
              "!**/index.ts",
              "--glob",
              "!**/index.jsx",
              "--glob",
              "!**/index.tsx",
            },
          },
        },
      }))
    end,
  },
}
